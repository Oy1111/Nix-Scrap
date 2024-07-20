-- Created by Nix
-- Created by Nix
fx_version 'cerulean'

dependency "vrp"

client_scripts {
    "lib/Tunnel.lua",
    "lib/Proxy.lua",
    "client.lua",
    "config.lua"
}

server_scripts {
    "@vrp/lib/utils.lua",
    "server.lua",
    "config.lua"
}