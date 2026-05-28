debugX = true

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "Nunya",
	Icon = 7023740651, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
	LoadingTitle = "Nunya Deluxe",
	LoadingSubtitle = "by Ythrone",
	Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},

	Discord = {
		Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
		Invite = "https://discord.gg/xGnphF6W7", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},

	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Key System",
		Subtitle = "Key's keep us safe!",
		Note = "Join our discord! ", -- Use this to tell the user how to get a key
		FileName = "Key111", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {"9451034691a"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
	}
})

local Tab = Window:CreateTab("Player", 4483362458) -- Title, Image
local Tab2 = Window:CreateTab("Game", 4483362458) -- Title, Image
local Tab3 = Window:CreateTab("Misc", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Utility")

local Button = Tab:CreateButton({
	Name = "Speed",
	Callback = function()
		local Player = game.Players.LocalPlayer
		local Character = Player.Character
		local Humanoid = Character:WaitForChild("Humanoid")
		Humanoid.WalkSpeed = 100
	end,
})


local Button = Tab:CreateButton({
	Name = "God Mode",
	Callback = function()
		local ff = Instance.new("ForceField")
		ff.Parent = game.Players.LocalPlayer.Character
	end,
})

local Button = Tab2:CreateButton({
	Name = "Night",
	Callback = function()
		local lighting = game.Lighting
		lighting.ClockTime = 0
	end,
})

local Button = Tab2:CreateButton({
	Name = "Day",
	Callback = function()
		local lighting = game.Lighting
		lighting.ClockTime = 14
	end,
})

local Button = Tab3:CreateButton({
	Name = "Fling Self",
	Callback = function()
		local Character = game.Players.LocalPlayer.Character
		local HRP = Character:FindFirstChild("HumanoidRootPart")
		local BodyVelocity = Instance.new("BodyVelocity",HRP)
		BodyVelocity.Velocity = Vector3.new(math.huge,math.huge,math.huge)
		HRP.Velocity = Vector3.new(math.huge,math.huge,math.huge)
	end,
})

local Button = Tab3:CreateButton({
	Name = "Quick Leave",
	Callback = function()
		local plr = game.Players.LocalPlayer
		plr:Kick("Quick Leave!")
	end,
})
