Config = {}

Config.NewCore = true

Config.GaragePed = "csb_burgerdrug"

Config.PedLocation =vector4(-1162.14, -892.44, 13.82, 31.67)

Config.VehicleSpawn = vector4(-1163.84, -890.99, 14.13, 113.78)

Config.Vehicle = 'stalion2'

HungerFill = {
    ["burger-bleeder"] = math.random(45, 65),
    ["burger-moneyshot"] = math.random(45, 55),
    ["burger-torpedo"] = math.random(35, 45),
    ["burger-heartstopper"] = math.random(50, 80),
    ["burger-meatfree"] = math.random(35, 45),
    ["burger-fries"] = math.random(35, 45),
}

ThirstFill = { 
    ["burger-softdrink"] = math.random(55, 65),
    ["burger-mshake"] = math.random(45, 55),
}

Config.Zones = {
    [1] = { coords = vector3(-1191.06, -896.73, 13.8), radius = 0.8, icon = "far fa-clipboard", event = "rd_burgershot:client:frontTray", label = "Food Tray", }, --
    [2] = { coords = vector3(-1190.74, -897.63, 13.8), radius = 0.9, icon = "fa-solid fa-beer-mug-empty", event = "rd_burgershot:client:drinkStation", label = "Make Drinks", job = "burgershot" }, --
    [3] = { coords = vector3(-1186.26, -901.12, 13.8), radius = 0.9, icon = "fa-solid fa-burger", event = "rd_burgershot:client:cookBurgers", label = "Make Burgers", job = "burgershot" },-- 
    [4] = { coords = vector3(-1187.81, -898.95, 13.8), radius = 0.75, icon = "fa-solid fa-fire-burner", event = "rd_burgershot:client:makeFries", label = "Make Fries", job = "burgershot" },--
    [5] = { coords = vector3(-1192.45, -898.67, 13.8), radius = 0.75, icon = "fa-solid fa-box-open", event = "rd_burgershot:client:ingredientStore", label = "Ingredients", job = "burgershot" },
    [6] = { coords = vector3(-1198.15, -897.64, 13.8), radius = 0.75, icon = "fa-solid fa-briefcase", event = "qb-bossmenu:client:OpenMenu", label = "Manage Business", job = {['burgershot'] = 4} },--
    [7] = { coords = vector3(-1196.67, -900.61, 13.8), radius = 1.15, icon = "fa-solid fa-square-up-right", event = "rd_burgershot:client:jobFridge", label = "Food Storage", job = "burgershot" },--
    [8] = { coords = vector3(-1183.81, -900.35, 13.8), radius = 1.0, icon = "far fa-clipboard", event = "rd_burgershot:client:passThrough", label = "Big Tray", job = "burgershot" },--
    [9] = { coords = vector3(-1201.04, -896.78, 13.8), radius = 0.6, icon = "fa-solid fa-clock", event = "rd_burgershot:clientToggleDuty", label = "Clock In/Out", job = "burgershot" },--
    [10] = { coords = vector3(-1190.38, -896.15, 13.8), radius = 0.8, icon = "fa-brands fa-cc-visa", event = "rd_burgershot:bill", label = "Bill Customer", job = "burgershot" },--
    [11] = { coords = vector3(-1188.76, -895.07, 13.8), radius = 0.8, icon = "fa-brands fa-cc-visa", event = "rd_burgershot:bill", label = "Bill Customer", job = "burgershot" },--
    [12] = { coords = vector3(-1187.18, -894.1, 13.8), radius = 0.8, icon = "fa-brands fa-cc-visa", event = "rd_burgershot:bill", label = "Bill Customer", job = "burgershot" },--
    [13] = { coords = vector3(-1194.66, -904.53, 13.8), radius = 0.8, icon = "fa-brands fa-cc-visa", event = "rd_burgershot:bill", label = "Bill Customer", job = "burgershot" },--
    [14] = { coords = vector3(-1189.48, -895.6, 13.8), radius = 0.8, icon = "far fa-clipboard", event = "rd_burgershot:client:frontTray2", label = "FOOD TRAY", },--
    [15] = { coords = vector3(-1188.07, -894.59, 13.8), radius = 0.8, icon = "far fa-clipboard", event = "rd_burgershot:client:frontTray3", label = "FOOD TRAY", },--
    [16] = { coords = vector3(-1193.65, -904.72, 13.8), radius = 0.8, icon = "far fa-clipboard", event = "rd_burgershot:client:frontTray4", label = "FOOD TRAY", }, -- 
}

Config.Items = {
label = "Shop",
    slots = 7,
    items = {
        [1] = {
            name = "burger-bun",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "burger-raw",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "burger-tomato",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "burger-lettuce",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "burger-potato",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "burger-mshakeformula",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "burger-sodasyrup",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 7,
        },
    }
}
