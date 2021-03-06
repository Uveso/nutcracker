#### Nut Cracker Main Base
---muchstuff

 


BaseBuilderTemplate {
    BaseTemplateName = 'NutCrackerMainBase',
    Builders = {
      
        'NC nuke or tele rush landupgrades',
       
        'NCengineerassistnuke_coinflip',
      
        'NCMobileNavalExperimentalcoinflip',
        'NCMobileNavalExperimentalbehavior',
        'NCcoinrapidfire',
        'NCparagoncoinflip',
        'NC paragon coinflip landupgrades',
        'ncdukehukemcoinflip',
    
          
        
--starting acu for coinflip


        
----landrush
'NCTtankandartyspamcoinflip',
'NClandfactoryrushcoinflip',

---COINFLIP STRATEGIES MAIN BASE --- there are more in expansion
'NCquantumgatecoinflip',
'NCeconomicupgradesfortelecoinflip',
'NCsubcommander_teleport_coinflip',
'NC Tele SCU Strategy',


'NC Satelite coinflip',
'NCt1bombercoinflip',
--
'ncNukecoinflip',


--

'NCairexpcoinflip',
--

'NClandexpcoinflip',




        # ==== ECONOMY ==== #
        'NCmapcontrolupgrades',
      
        'NC tower upgrades',
        'NCT3Engineerassistmex',
       
        'NCEngineerEnergyBuilders',
        'NCemergencyenergy',
      
        'NC Initial ACU Builders',
        'NCT1EngineerBuilders',
        'NCT2EngineerBuilders',
        'NCT3EngineerBuilders',
        'NCemergencyenergymain',
        
    
        'NCmassupgrade',
       
       'NCUpgradeBuilders_mainbase',
    
    
        
        # Factory 
      
       
        
       


        # Engineer Builders
        'NCEngineerFactoryBuilders',
    
       
        'NCEngineerFactoryConstruction',
		
		# SCU Upgrades
		'NCSCUUpgrades',
        
     
       
        
        # Build Mass high pri at this base
        'NCEngineerMassBuildersHighPri',
        
       
      
        
      
      
        'NCACUBuilders',
        'NCACUUpgrades',
  
 
        
        
        # ==== EXPANSION ==== #
        'NCEngineerExpansionBuildersFull',
        'NCEngineerExpansionBuildersSmall',
   
      
		
        
        # ==== DEFENSES ==== #
        'NCdefense_onisland',
		'NCT1BaseDefenses',
        'NCt4airemergencyreactionmainbase',
		
		'NCT3BaseDefenses',
        'NCt4airemergencyreaction',
		
		
        'NCTMLandTMDantinavy',
        'NCemergencybuildersearlygame',
		'NCT2Artillerybehavior',
		'NCT3Artillerybehavior',
		'NCT4Artillerybehavior',
        'NCT3NukeDefenses',
        'NCT3NukeDefenseBehaviors',
		
		--offense
        'NCadaptiveoffense',
	
        
        # ==== NAVAL EXPANSION ==== #
        'NCT2NavalDefenses',
        'NCNaval Factories',
        'NCT1SeaFactoryBuilders',
        'NCSeaFactoryUpgrades',
        'ncSeaHunterFormBuilders',
        'NCT2SeaFactoryBuilders',
        
     

        
        # ==== LAND UNIT BUILDERS ==== #
        'NCdefense_antiair',
       
        'NCspammage',
        'NCExpansionExtraFactory',
       
       
        
       
       
       
      
      
     
       
        'NCAntiLandQuickBuild',
     
       
        'NCT3Shields',
    
        'NClandbehavior',

        # ==== AIR UNIT BUILDERS ==== #
      
        'NCairstaging',
        'NCT1AntiAirBuilders',
        'NCT3AntiAirBuilders',
       
        
        'NCAntiNavyQuickBuild',
      
        'NCfindenemyfightersbehavior',
        'NCt4airsnipebehavior',
        'NCTransportFactoryBuilders',
       
        'NCexcessairunitsbehavior',
      
     
       
        'NCt3emergencybuilders',
        
        'NCexcessresourcest1bomberbuild',
  
     
        'NCacusnipe',
      
    
    

        # ==== EXPERIMENTALS ==== #
        'NCMobileAirExperimentalEngineers',
        'ncMobileAirExperimentalbehavior',
        'NCExperimentalArtillery',
        'ncMobileLandExperimentalbehavior',
        'NCMobileLandExperimental',
        'NC Satelite',
        'NC Satelite Behavior',
    
		
      
		
		'NCEconomicExperimentalEngineers',
		
		
        # ==== ARTILLERY BUILDERS ==== #
       
    
      'NCNukebehavior',
      'ncNukeBuildersEngineerBuilders',
      
        
  
        
		
		# ======== Strategies ======== #
	
		
		# ===== Strategy Platoons ===== #
		
    },
    NonCheatBuilders = {
        'NCAirScoutFactoryBuilders',
        'NClandscout',
        'NClandscoutbehavior',
        
        'NCAirScoutbehavior',
        'NCRadarUpgradeBuildersMain',
        'NCRadarEngineerBuilders',
       
      
      
        
        
       
        
        
    },
    BaseSettings = {
        EngineerCount = {
            Tech1 = 15,
            Tech2 = 10,
            Tech3 = 45, #30,
            SCU = 40,
        },
        FactoryCount = {
            Land = 8,
            Air = 10,
            Sea = 3,
            Gate = 5,
        },
        MassToFactoryValues = {
            T1Value = 6, #8
            T2Value = 15, #20
            T3Value = 22.5, #27.5 
        },
    },
    ExpansionFunction = function(aiBrain, location, markerType)
        return 0
    end,
    FirstBaseFunction = function(aiBrain)
        local per = ScenarioInfo.ArmySetup[aiBrain.Name].AIPersonality
        --LOG('Personality is '..per)
        if not per then 
            --LOG('No Per')
            return -1
        end
        
        if per != 'nut_cracker' and per != 'nut_crackercheat' then
            --LOG('Not NutCracker')
            return -1
        end

        local mapSizeX, mapSizeZ = GetMapSize()
        
        local startX, startZ = aiBrain:GetArmyStartPos()
        local isIsland = import('/lua/editor/SorianBuildConditions.lua').IsIslandMap(aiBrain)
        
        if per == 'nut_cracker' or per == 'nut_crackercheat' then
            --LOG('Returning NutCracker')
            return 1000, 'nut_cracker'
        end
        
        #If we're playing on an island map, do not use this plan often
        if isIsland then
            return Random(25, 50), 'nut_cracker'

        elseif mapSizeX > 256 and mapSizeZ > 256 and mapSizeX <= 512 and mapSizeZ <= 512 then
            return Random(75, 100), 'nut_cracker'

        elseif mapSizeX >= 512 and mapSizeZ >= 512 and mapSizeX <= 1024 and mapSizeZ <= 1024 then
            return Random(50, 100), 'nut_cracker'

        else
            return Random(25, 75), 'nut_cracker'
        end
    end,
}