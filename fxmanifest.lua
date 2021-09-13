fx_version "adamant"
game "gta5"

name "NUI Context Menu"
description "A modular context Menu for FiveM"
author "NeroHiro"

ui_page "./ui/index.html"

files{
    "ui/index.html",
    "ui/main.css",
    "ui/main.js",
}

client_scripts {
    "client.lua",
    "police.lua",
    "weazel.lua"
}

exports {
	'CreateNewMenu'
}