--[[
Vehicle Classes For Vehicle Restrictions:
0: Compacts     1: Sedans       2: SUVs         3: Coupes       4: Muscle       5: Sports Classics
6: Sports       7: Super        8: Motorcycles  9: Off-road     10: Industrial  11: Utility
12: Vans        13: Cycles      14: Boats       15: Helicopters 16: Planes      17: Service
18: Emergency   19: Military    20: Commercial  21: Trains
]]--


Config = Config or {}

 Config.Locations = {
     ['CityMotorworks'] = {
         settings = {
             label = 'City Motorworks',
             welcomeLabel = "Welcome to City Motorworks",
             enabled = true,
         },
         blip = {
             label = 'City Motorworks',
             coords = vector3(731.9910, -1088.7750, 21.9903),
             sprite = 72,
             scale = 0.65,
             color = 0,
             display = 4,
             enabled = true,
         },
         categories = {
             mods = true,
             turbo = true,
             repair = true,
             respray = true,
             liveries = true,
             wheels = true,
             tint = true,
             plate = true,
             extras = true,
             neons = true,
             xenons = true,
             horn = true,
             cosmetics = true,
         },
         drawtextui = {
             text = "City Motorworks"
         },
         restrictions = { deniedClasses = { 18 } },
         zones = {
             { coords = vector3(732.3511, -1088.5095, 22.1690), length = 6.0, width = 4.0, heading =  268.8895, minZ = 19.0, maxZ = 22.0 },
         }
     }, 


     ['DocksMotorworks'] = {
        settings = {
            label = 'Docks Motorworks',
            welcomeLabel = "Welcome to Docks Motorworks!",
            enabled = true,
        },
        blip = {
            label = 'Docks Motorworks',
            coords = vector3(573.3089, -3235.4827, 0.4899),
            sprite = 72,
             scale = 0.65,
             color = 0,
             display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Water Sports Motorworks"
        },
        restrictions = { deniedClasses = { 18 } },
        zones = {
            { coords = vector3(573.3089, -3235.4827, 0.4899), length = 6.0, width = 10.0, heading = 180.8256, minZ = 0.0, maxZ = 5.0 },
        }
    },
 
     
 
     ['SandyMotorworks'] = {
         settings = {
             label = 'Route68 Motorworks',
             welcomeLabel = "Welcome to Route68 Motorworks!",
             enabled = true,
         },
         blip = {
             label = 'Sandy Motorworks',
             coords = vector3(1178.3921, 2640.5449, 37.7539),
             sprite = 72,
             scale = 0.65,
             color = 0,
             display = 4,
             enabled = true,
         },
         categories = {
             mods = true,
             turbo = true,
             repair = true,
             respray = true,
             liveries = true,
             wheels = true,
             tint = true,
             plate = true,
             extras = true,
             neons = true,
             xenons = true,
             horn = true,
             cosmetics = true,
         },
         drawtextui = {
             text = "Route68 Motorworks"
         },
         restrictions = { deniedClasses = { 18 } },
         zones = {
             { coords = vector3(1182.11, 2640.3, 37.75), length = 6.0, width = 4.0, heading = 0.0, minZ = 36.0, maxZ = 40.0 },
             { coords = vector3(1174.78, 2640.17, 37.75), length = 6.0, width = 4.0, heading = 0.0, minZ = 36.0, maxZ = 40.0 },
         }
     },
 
     ['PaletoMotorworks'] = {
         settings = {
             label = 'Paleto Motorworks',
             welcomeLabel = "Welcome to Paleto Motorworks!",
             enabled = true,
         },
         blip = {
             label = 'Paleto Motorworks',
             coords = vector3(108.3242, 6624.0996, 31.7873),
             sprite = 72,
             scale = 0.65,
             color = 0,
             display = 4,
             enabled = true,
         },
         categories = {
             mods = false,
             turbo = false,
             repair = true,
             respray = true,
             liveries = true,
             wheels = true,
             tint = true,
             plate = true,
             extras = true,
             neons = true,
             xenons = true,
             horn = true,
             cosmetics = true,
         },
         drawtextui = {
             text = "Paleto Motorworks"
         },
         restrictions = { deniedClasses = { 18 } },
         zones = {
             { coords = vector3(110.93, 6626.51, 31.79), length = 6.0, width = 4.0, heading = 225.0, minZ = 30.5, maxZ = 34.5 },
             { coords = vector3(105.8, 6621.43, 31.79), length = 6.0, width = 4.0, heading = 225.0, minZ = 30.5, maxZ = 34.5 },
         }
     },
}