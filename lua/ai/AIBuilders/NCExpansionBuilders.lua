#****************************************************************************
#**
#**  File     :  /lua/AI/AIBuilders/SorianExpansionBuilders.lua
#**
#**  Summary  : Builder definitions for expansion bases
#**
#**  Copyright � 2007 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local BBTmplFile = '/lua/basetemplates.lua'
local BuildingTmpl = 'BuildingTemplates'
local BaseTmpl = 'BaseTemplates'
local ExBaseTmpl = 'ExpansionBaseTemplates'
local Adj2x2Tmpl = 'Adjacency2x2'
local UCBC = '/lua/editor/UnitCountBuildConditions.lua'
local MIBC = '/lua/editor/MiscBuildConditions.lua'
local MABC = '/lua/editor/MarkerBuildConditions.lua'
local OAUBC = '/lua/editor/OtherArmyUnitCountBuildConditions.lua'
local EBC = '/lua/editor/EconomyBuildConditions.lua'
local PCBC = '/lua/editor/PlatoonCountBuildConditions.lua'
local SAI = '/lua/ScenarioPlatoonAI.lua'
local IBC = '/lua/editor/InstantBuildConditions.lua'
local PlatoonFile = '/lua/platoon.lua'
local SBC = '/lua/editor/SorianBuildConditions.lua'
local SIBC = '/lua/editor/SorianInstantBuildConditions.lua'
local CF = '/mods/nutcracker/hook/lua/coinflip.lua'
local WRC = '/mods/nutcracker/hook/lua/weaponsrangeconditions.lua'
local EN = '/mods/nutcracker/hook/lua/economicnumbers.lua'


local ExtractorToFactoryRatio = 3



BuilderGroup {
    BuilderGroupName = 'NCEngineerExpansionBuildersFull',
    BuildersType = 'EngineerBuilder',
    
    Builder {
        BuilderName = 'NC T1rushVacantStartingAreaEngineer_islandmap ',
        PlatoonTemplate = 'EngineerBuilderSorian',
        Priority = 985,
        InstanceCount = 2,
        
       
        BuilderConditions = {
          
            { SBC, 'IsIslandMap', { true } },
            { MIBC, 'GreaterThanGameTime', { 240} },

            { UCBC, 'StartLocationNeedsEngineer', { 'LocationType', 1000, -1000, 5, 0, 'StructuresNotMex' } },
        
           
			{ SIBC, 'LessThanExpansionBases', { } },
			{ SBC, 'NoRushTimeCheck', { 0 }},
       
  
           
        },
        BuilderType = 'Any',
        BuilderData = {
			RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Start Location',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 30,
                ThreatRings = 0,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {                    
                    'T1GroundDefense',
                    'T1AirFactory',
                    'T1GroundDefense',
                    'T1LandFactory',
                    'T1AirFactory',
                    'T1AirFactory',
                    

					'T1Radar',
                                        

                }               
            },
            NeedGuard = true,
        }
    }, 
    Builder {
        BuilderName = 'NC T1VacantStartingAreaEngineer_islandmap_TIMED ',
        PlatoonTemplate = 'EngineerBuilderSorian',
        Priority = 985,
        InstanceCount = 2,
        
       
        BuilderConditions = {
            { SBC, 'IsIslandMap', { true } },
            { MIBC, 'GreaterThanGameTime', { 250} },
            { UCBC, 'StartLocationNeedsEngineer', { 'LocationType', 1000, -1000, 5, 0, 'StructuresNotMex' } },
         
         
           
			{ SIBC, 'LessThanExpansionBases', { } },
			{ SBC, 'NoRushTimeCheck', { 0 }},
       
  
           
        },
        BuilderType = 'Any',
        BuilderData = {
			RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Start Location',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 30,
                ThreatRings = 0,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {                    
                    'T1GroundDefense',
                    'T1AirFactory',
                    'T1GroundDefense',
                    'T1LandFactory',
                    'T1AirFactory',
                    'T1AirFactory',
                    

					'T1Radar',
                                        

                }               
            },
            NeedGuard = true,
        }
    }, 
    
    Builder {
        BuilderName = 'NC T1VacantStartingAreaEngineer_islandmap',
        PlatoonTemplate = 'EngineerBuilderSorian',
        Priority = 980,
        InstanceCount = 2,
       
        BuilderConditions = {
            { SBC, 'IsIslandMap', { true } },
            { MIBC, 'GreaterThanGameTime', { 250} },
            { UCBC, 'StartLocationNeedsEngineer', { 'LocationType', 1000, -1000, 100, 0, 'StructuresNotMex' } },
          
          
			{ SIBC, 'LessThanExpansionBases', { } },
			{ SBC, 'NoRushTimeCheck', { 0 }},
          
      
          
            
        },
        BuilderType = 'Any',
        BuilderData = {
			RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Start Location',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 100,
                ThreatRings = 0,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {                    
                    'T1GroundDefense',
                    'T1AirFactory',
                    'T1GroundDefense',
                    'T1LandFactory',
                    'T1AirFactory',
                    'T1AirFactory',
                   

					'T1Radar',
                }
            },
            NeedGuard = true,
        }
    },       
    Builder {
        BuilderName = 'NC T2VacantStartingAreaEngineer_islandmap',
        PlatoonTemplate = 'T2EngineerBuilderSorian',
        Priority = 915,
        InstanceCount = 2,
       
        BuilderConditions = {
            { SBC, 'IsIslandMap', { true } },
            { UCBC, 'StartLocationNeedsEngineer', { 'LocationType', 1000, -1000, 0, 2, 'StructuresNotMex' } },
      
			{ SIBC, 'LessThanExpansionBases', { } },
			
			{ SBC, 'NoRushTimeCheck', { 0 }},
          
         
            
        },
        BuilderType = 'Any',
        BuilderData = {
			RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Start Location',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 25,
                ThreatRings = 2,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {                    
                    'T1GroundDefense',
                    'T1AirFactory',
                    'T1GroundDefense',
                    'T1LandFactory',
                    'T1AirFactory',
                    'T1AirFactory',
               

					'T1Radar',
                }
            },
            NeedGuard = true,
        }
    },
    Builder {
        BuilderName = 'NC T3VacantStartingAreaEngineer_islandmap',
        PlatoonTemplate = 'T3EngineerBuilderSorian',
        Priority = 912,
        InstanceCount = 2,
      
        BuilderConditions = {
            { SBC, 'IsIslandMap', { true } },
            { UCBC, 'StartLocationNeedsEngineer', { 'LocationType', 1000, -1000, 0, 2, 'StructuresNotMex' } },
            { UCBC, 'UnitCapCheckLess', { 0.95 } },
			{ SIBC, 'LessThanExpansionBases', { } },
			{ SBC, 'NoRushTimeCheck', { 0 }},
	
        
           
        },
        BuilderType = 'Any',
        BuilderData = {
			RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Start Location',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 25,
                ThreatRings = 2,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {
                    'T1GroundDefense',
                    'T1AirFactory',
                    'T1GroundDefense',
                    'T1LandFactory',
                    'T1AirFactory',
                    'T1AirFactory',
                  

					'T1Radar',			
                }
            },
            NeedGuard = true,
        }
    },
      

    Builder {
        BuilderName = 'NC T1rushVacantStartingAreaEngineer',
        PlatoonTemplate = 'EngineerBuilderSorian',
        Priority = 985,
        InstanceCount = 2,
       
       
        BuilderConditions = {
            { MIBC, 'GreaterThanGameTime', { 240} },
            { UCBC, 'StartLocationNeedsEngineer', { 'LocationType', 1000, -1000, 5, 0, 'StructuresNotMex' } },
           
       
            
			{ SIBC, 'LessThanExpansionBases', { } },
			{ SBC, 'NoRushTimeCheck', { 0 }},
       
  
            
        },
        BuilderType = 'Any',
        BuilderData = {
			RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Start Location',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 25,
                ThreatRings = 0,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {                    
                    'T1GroundDefense',
                 
               
                
                    'T1AirFactory',
                    'T1GroundDefense',
					'T1LandFactory',
					'T1AADefense',
					'T1Radar',
                                      

                }               
            },
            NeedGuard = true,
        }
    },
    Builder {
        BuilderName = 'NC T1rushVacantStartingAreaEngineer_timed',
        PlatoonTemplate = 'EngineerBuilderSorian',
        Priority = 985,
        InstanceCount = 2,
       
       
        BuilderConditions = {
            { MIBC, 'GreaterThanGameTime', { 250} },
            { UCBC, 'StartLocationNeedsEngineer', { 'LocationType', 1000, -1000, 5, 0, 'StructuresNotMex' } },
           
       
          
			{ SIBC, 'LessThanExpansionBases', { } },
			{ SBC, 'NoRushTimeCheck', { 0 }},
       
  
            
        },
        BuilderType = 'Any',
        BuilderData = {
			RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Start Location',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 25,
                ThreatRings = 0,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {                    
                    'T1GroundDefense',
                 
               
                
                    'T1AirFactory',
                    'T1GroundDefense',
					'T1LandFactory',
					'T1AADefense',
					'T1Radar',
                                      

                }               
            },
            NeedGuard = true,
        }
    },
    Builder {
        BuilderName = 'NC T1VacantStartingAreaEngineer',
        PlatoonTemplate = 'EngineerBuilderSorian',
        Priority = 980,
        InstanceCount = 2,
       
        BuilderConditions = {
            { MIBC, 'GreaterThanGameTime', { 255} },
            { UCBC, 'StartLocationNeedsEngineer', { 'LocationType', 1000, -1000, 100, 0, 'StructuresNotMex' } },
   
          
			{ SIBC, 'LessThanExpansionBases', { } },
			{ SBC, 'NoRushTimeCheck', { 0 }},
          
      
          
           
        },
        BuilderType = 'Any',
        BuilderData = {
			RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Start Location',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 100,
                ThreatRings = 2,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {                    
                    'T1GroundDefense',
                 
               
                
                    'T1AirFactory',
                    'T1GroundDefense',
					'T1LandFactory',
					'T1AADefense',
					'T1Radar',
                }
            },
            NeedGuard = true,
        }
    },       
    Builder {
        BuilderName = 'NC T2VacantStartingAreaEngineer',
        PlatoonTemplate = 'T2EngineerBuilderSorian',
        Priority = 982,
      
        BuilderConditions = {
            { UCBC, 'StartLocationNeedsEngineer', { 'LocationType', 1000, -1000, 0, 2, 'StructuresNotMex' } },
          
			{ SIBC, 'LessThanExpansionBases', { } },
			
			{ SBC, 'NoRushTimeCheck', { 0 }},
          
         
            
        },
        BuilderType = 'Any',
        BuilderData = {
			RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Start Location',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 25,
                ThreatRings = 2,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {                    
                    'T1GroundDefense',
                 
               
                
					'T1AirFactory',
					'T1LandFactory',
					'T1AADefense',
					'T1Radar',
                }
            },
            NeedGuard = true,
        }
    },
    Builder {
        BuilderName = 'NC T3VacantStartingAreaEngineer',
        PlatoonTemplate = 'T3EngineerBuilderSorian',
        Priority = 982,
      
        BuilderConditions = {
            { UCBC, 'StartLocationNeedsEngineer', { 'LocationType', 1000, -1000, 0, 2, 'StructuresNotMex' } },
      
			{ SIBC, 'LessThanExpansionBases', { } },
			{ SBC, 'NoRushTimeCheck', { 0 }},
	
        
            
        },
        BuilderType = 'Any',
        BuilderData = {
			RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Start Location',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 25,
                ThreatRings = 2,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {
                    'T1GroundDefense',
                 
               
                
					'T1AirFactory',
					'T1LandFactory',
					'T1AADefense',
					'T1Radar',		
                }
            },
            NeedGuard = true,
        }
    },
      
}

BuilderGroup {
    BuilderGroupName = 'NCEngineerExpansionBuildersSmall',
    BuildersType = 'EngineerBuilder',


      Builder {
        BuilderName = 'NC expansion Area Engineer(Full Base)',
        PlatoonTemplate = 'EngineerBuilderSorian',
        Priority = 722,
       
        BuilderConditions = {
            { MIBC, 'GreaterThanGameTime', { 600 } },
            { UCBC, 'ExpansionAreaNeedsEngineer', { 'LocationType', 1000, -1000, 100, 2, 'StructuresNotMex' } },
            { UCBC, 'StartLocationsFull', { 'LocationType', 1000, -1000, 100, 2, 'StructuresNotMex' } },
            { UCBC, 'UnitCapCheckLess', { .8 } },
            { SIBC, 'LessThanExpansionBases', { } },
            { SBC, 'NoRushTimeCheck', { 0 }},
       
         
            
        },
        BuilderType = 'Any',
        BuilderData = {
            RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Expansion Area',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 100,
                ThreatRings = 2,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {
                    'T1GroundDefense',
                    'T1AirFactory',
                    'T1LandFactory',
                    'T1AirFactory',
                    'T1AirFactory',
               

					'T1Radar',
                }
            },
            NeedGuard = true,
        }
    },
    Builder {
        BuilderName = 'NC T1 Vacant Expansion Area Engineer(Fire base)',
        PlatoonTemplate = 'EngineerBuilderSorian',
        Priority = 722,
      
        BuilderConditions = {
            { MIBC, 'GreaterThanGameTime', { 600 } },
            { SIBC, 'ExpansionPointNeedsStructure', { 'LocationType', 1000, 'DEFENSE TECH1 STRUCTURE', 20, 3, 0, 1, 2, 'StructuresNotMex' } },
            #{ UCBC, 'StartLocationsFull', { 'LocationType', 1000, -1000, 0, 2, 'StructuresNotMex' } },
            { UCBC, 'UnitCapCheckLess', { .7 } },
            
        },
        BuilderType = 'Any',
        BuilderData = {
            RequireTransport = true,
            Construction = {
                BuildClose = false,
                MarkerRadius = 20,
                NearMarkerType = 'Expansion Area',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = 0,
                ThreatMax = 1,
                ThreatRings = 2,
                MarkerUnitCount = 3,
                ThreatType = 'StructuresNotMex',
                MarkerUnitCategory = 'DEFENSE TECH1 STRUCTURE',
                BuildStructures = {
                    'T1GroundDefense',
                    'T1AirFactory',
                    'T1LandFactory',
                    'T1AirFactory',
                    'T1AirFactory',
               

					'T1Radar',
                }
            },
            NeedGuard = true,
        }
    },
    Builder {
        BuilderName = 'NC T2VacantExpansiongAreaEngineer',
        PlatoonTemplate = 'T2EngineerBuilderSorian',
        Priority = 722,
    
        BuilderConditions = {
            { MIBC, 'GreaterThanGameTime', { 600 } },
            { UCBC, 'ExpansionAreaNeedsEngineer', { 'LocationType', 1000, -1000, 0, 2, 'StructuresNotMex' } },
            { UCBC, 'StartLocationsFull', { 'LocationType', 1000, -1000, 0, 2, 'StructuresNotMex' } },
            { UCBC, 'UnitCapCheckLess', { .7 } },
            { SIBC, 'LessThanExpansionBases', { } },
            { SBC, 'NoRushTimeCheck', { 0 }},
            { SIBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.ENERGYPRODUCTION * categories.TECH2 } },
           
            
        },
        BuilderType = 'Any',
        BuilderData = {
            RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Expansion Area',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 0,
                ThreatRings = 2,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {
                    'T2GroundDefense',
                    'T1AirFactory',
                    'T1LandFactory',
                    'T1AirFactory',
                    'T1AirFactory',
               

					'T1Radar',
                }
            },
            NeedGuard = true,
        }
    },
    Builder {
        BuilderName = 'NC T3VacantExpansionAreaEngineer',
        PlatoonTemplate = 'T3EngineerBuilderSorian',
        Priority = 722,
      
        BuilderConditions = {
            { MIBC, 'GreaterThanGameTime', { 600 } },
            { UCBC, 'ExpansionAreaNeedsEngineer', { 'LocationType', 1000, -1000, 0, 2, 'StructuresNotMex' } },
            { UCBC, 'StartLocationsFull', { 'LocationType', 1000, -1000, 0, 2, 'StructuresNotMex' } },
            { UCBC, 'UnitCapCheckLess', { .7 } },
            { SIBC, 'LessThanExpansionBases', { } },
            { SBC, 'NoRushTimeCheck', { 0 }},
            { SIBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.ENERGYPRODUCTION * categories.TECH3 } },
         
            
        },
        BuilderType = 'Any',
        BuilderData = {
            RequireTransport = true,
            Construction = {
                BuildClose = false,
                BaseTemplate = ExBaseTmpl,
                ExpansionBase = true,
                NearMarkerType = 'Expansion Area',
                LocationRadius = 1000,
                LocationType = 'LocationType',
                ThreatMin = -1000,
                ThreatMax = 0,
                ThreatRings = 2,
                ThreatType = 'StructuresNotMex',
                BuildStructures = {
                    'T2GroundDefense',
                    'T1LandFactory',
                    'T3AADefense',
                    'T2Radar',
                }
            },
            NeedGuard = true,
        }
    },
}




    



