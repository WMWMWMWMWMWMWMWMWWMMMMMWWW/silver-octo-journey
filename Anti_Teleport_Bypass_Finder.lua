local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local MainWindow = Rayfield:CreateWindow({
	Name = "Main",
	LoadingTitle = "Loading...",
	LoadingSubtitle = "by hitler nein jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew jew",
	ConfigurationSaving = {
	   Enabled = true,
	   FolderName = nil, -- Create a custom folder for your hub/game
	   FileName = "McDonalds Hub"
	},
	Discord = {
	   Enabled = false,
	   Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
	   RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
	   Title = "McDonalds Hub",
	   Subtitle = "Key System",
	   Note = "Key: McDonalds",
	   FileName = "SiriusKey",
	   SaveKey = true,
	   GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
	   Key = "McDonalds"
	}
 })


 local MainTab = MainWindow:CreateTab("Main", 4483362458) -- Title, Image


local Button = MainTab:CreateButton({
	Name = "auto blow",
	Callback = function()
		while true do
			local args = {
				[1] = "BlowBubble"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("Shared")
				:WaitForChild("Framework"):WaitForChild("Network")
				:WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))

			task.wait(0.000001) -- adjust the delay as needed (1 second here)
		end
	end,
})

local Button = MainTab:CreateButton({
	Name = "sell",
	Callback = function()
		while true do
			local args = {
				[1] = "SellBubble"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))


			task.wait(0.000001) -- adjust the delay as needed (1 second here)
		end
	end,
})


local Button = MainTab:CreateButton({
	Name = "auto claim playtime",
	Callback = function()
		while true do
			for i = 1, 9 do
        local args = {
            [1] = "ClaimPlaytime",
            [2] = i
        }

        game:GetService("ReplicatedStorage")
            :WaitForChild("Shared")
            :WaitForChild("Framework")
            :WaitForChild("Network")
            :WaitForChild("Remote")
            :WaitForChild("Function")
            :InvokeServer(unpack(args))

        wait(0.000000001) -- Delay between each claim (adjust if needed)
    end

    wait(0.000000001) -- Delay before the whole loop restarts (adjust as needed)
end
end

})



local Button = MainTab:CreateButton({
	Name = "auto claim all chest",
	Callback = function()
		while true do
		    wait(0.000000000000000000001)
			local args = {
    [1] = "ClaimChest",
    [2] = "Giant Chest"
}

game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))

		end
	end,


})



 local Slider = MainTab:CreateSlider({
	Name = "Walkspeed",
	Range = {16, 250},
	Increment = 10,
	Suffix = "Walkspeed",
	CurrentValue = 10,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(v)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end,
 })



 local Slider = MainTab:CreateSlider({
	Name = "JumpPower",
	Range = {50, 500},
	Increment = 10,
	Suffix = "JumpPower",
	CurrentValue = 10,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(v)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end,
 })
 
