--[[
  /$$$$$$              /$$      /$$$$$$                  /$$           /$$      /$$                              
 /$$__  $$            | $$     /$$__  $$                | $$          | $$  /$ | $$                              
| $$  \__/  /$$$$$$  /$$$$$$  | $$  \__/  /$$$$$$   /$$$$$$$  /$$$$$$ | $$ /$$$| $$  /$$$$$$   /$$$$$$   /$$$$$$ 
| $$       |____  $$|_  $$_/  | $$       /$$__  $$ /$$__  $$ /$$__  $$| $$/$$ $$ $$ |____  $$ /$$__  $$ /$$__  $$
| $$        /$$$$$$$  | $$    | $$      | $$  \ $$| $$  | $$| $$$$$$$$| $$$$_  $$$$  /$$$$$$$| $$  \__/| $$$$$$$$
| $$    $$ /$$__  $$  | $$ /$$| $$    $$| $$  | $$| $$  | $$| $$_____/| $$$/ \  $$$ /$$__  $$| $$      | $$_____/
|  $$$$$$/|  $$$$$$$  |  $$$$/|  $$$$$$/|  $$$$$$/|  $$$$$$$|  $$$$$$$| $$/   \  $$|  $$$$$$$| $$      |  $$$$$$$
 \______/  \_______/   \___/   \______/  \______/  \_______/ \_______/|__/     \__/ \_______/|__/       \_______/

For the Top Cats.

Developed by falseopx#2012 and Vault#0001
--]]

local gamelist = {
    [2041312716] = "fixedRagdoll",
    [1962086868] = "towerofmeow",
    [5977280685] = "cattolegends",
    [537413528] = "buildcatnipforcatto",
    [4169490976] = "mortemthecat".
    [914010731] = "RoCat"
}

for gameId,CatWare in pairs(gamelist) do
    if gameId == game.PlaceId then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/CatzCode/cat/main/'..CatWare..'.lua'))()
    end
end

spawn(function()
    local VirtualUser=game:GetService'VirtualUser'
    game:GetService'Players'.LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)
