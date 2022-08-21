version '1.0.0'
fx_version 'cerulean'
games { 'gta5' }

--RageUI
client_scripts {
    "libs/RMenu.lua",
    "libs/menu/RageUI.lua",
    "libs/menu/Menu.lua",
    "libs/menu/MenuController.lua",
    "libs/components/*.lua",
    "libs/menu/elements/*.lua",
    "libs/menu/items/*.lua",
    "libs/menu/panels/*.lua",
    "libs/menu/panels/*.lua",
    "libs/menu/windows/*.lua",
}

client_scripts {
    "client/client.lua",
    "config.lua"
}

server_scripts {
    "server/server.lua"
}