for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "RoshUI" then
        v:Destroy()
    end
end
 
local WindowTable = {}

function WindowTable:CreateWindow(windowtitle)
	local RoshUI = Instance.new("ScreenGui")
	local backFrame = Instance.new("Frame")
	local topBarLine = Instance.new("Frame")
	local mainCorner = Instance.new("UICorner")
	local SideBar = Instance.new("Frame")
	local mainCorner_2 = Instance.new("UICorner")
	local allTabs = Instance.new("Frame")
	local mainCorner_3 = Instance.new("UICorner")
	local tablisting = Instance.new("UIListLayout")

	local allPages = Instance.new("Frame")
	local mainCorner_4 = Instance.new("UICorner")

	local pagesFolder = Instance.new("Folder")
	local Title = Instance.new("TextLabel")

	--Properties:

	RoshUI.Name = "RoshUI"
	RoshUI.Parent = game:GetService("CoreGui")
	RoshUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	backFrame.Name = "backFrame"
	backFrame.Parent = RoshUI
	backFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	backFrame.Position = UDim2.new(0.0357545726, 0, 0.25212121, 0)
	backFrame.Size = UDim2.new(0, 654, 0, 440)

    local Exit = Instance.new("ImageButton")

    Exit.Name = "Exit"
    Exit.Parent = backFrame
    Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Exit.BackgroundTransparency = 1.000
    Exit.Position = UDim2.new(0.93577987, 0, 0, 0)
    Exit.Size = UDim2.new(0, 42, 0, 42)
    Exit.Image = "rbxassetid://7072725342"

    Exit.MouseButton1Click:Connect(function()
        backFrame:TweenPosition(UDim2.new(-1000, 0,0.073, 0),"Out", "Linear", 350)
    end)

    Exit.MouseEnter:Connect(function()
        game.TweenService:Create(Exit, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                ImageColor3 = Color3.fromRGB(255,0,0)
        }):Play()
        end)
    Exit.MouseLeave:Connect(function()
        game.TweenService:Create(Exit, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            ImageColor3 = Color3.fromRGB(255,255,255)
    }):Play()
    end)

    local UIS = game:GetService('UserInputService')
    local frame = backFrame
    local dragToggle = nil
    local dragSpeed = 0.25
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local delta = input.Position - dragStart
        local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
    end

    frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
            dragToggle = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if dragToggle then
                updateInput(input)
            end
        end
end)


	topBarLine.Name = "topBarLine"
	topBarLine.Parent = backFrame
	topBarLine.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	topBarLine.BorderSizePixel = 0
	topBarLine.Position = UDim2.new(0, 0, 0.0965151712, 0)
	topBarLine.Size = UDim2.new(0, 653, 0, 2)

	mainCorner.CornerRadius = UDim.new(0, 5)
	mainCorner.Name = "mainCorner"
	mainCorner.Parent = backFrame

	SideBar.Name = "SideBar"
	SideBar.Parent = backFrame
	SideBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	SideBar.Position = UDim2.new(0.0158768874, 0, 0.118030339, 0)
	SideBar.Size = UDim2.new(0, 205, 0, 378)

	mainCorner_2.CornerRadius = UDim.new(0, 5)
	mainCorner_2.Name = "mainCorner"
	mainCorner_2.Parent = SideBar

	allTabs.Name = "allTabs"
	allTabs.Parent = SideBar
	allTabs.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	allTabs.Position = UDim2.new(0.0353890769, 0, 0.0211640205, 0)
	allTabs.Size = UDim2.new(0, 190, 0, 364)

	mainCorner_3.CornerRadius = UDim.new(0, 5)
	mainCorner_3.Name = "mainCorner"
	mainCorner_3.Parent = allTabs

	tablisting.Name = "tablisting"
	tablisting.Parent = allTabs
	tablisting.SortOrder = Enum.SortOrder.LayoutOrder
	tablisting.Padding = UDim.new(0, 9)




	allPages.Name = "allPages"
	allPages.Parent = backFrame
	allPages.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	allPages.Position = UDim2.new(0.343094021, 0, 0.118030339, 0)
	allPages.Size = UDim2.new(0, 422, 0, 378)

	mainCorner_4.CornerRadius = UDim.new(0, 5)
	mainCorner_4.Name = "mainCorner"
	mainCorner_4.Parent = allPages



	pagesFolder.Name = "pagesFolder"
	pagesFolder.Parent = allPages

	Title.Name = "Title"
	Title.Parent = backFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0, 0, 0.0136363637, 0)
	Title.Size = UDim2.new(0, 653, 0, 26)
	Title.Font = Enum.Font.SourceSans
	Title.Text = windowtitle
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 26.000
	Title.TextWrapped = true
	
	
	local TabHandler = {}
	
	function TabHandler:CreateTab(tabname)
		tabname = tabname or "New Tab"
		local newPage = Instance.new("ScrollingFrame")
		local ElementsListing = Instance.new("UIListLayout")
		local tabButton = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		
		newPage.Name = "newPage"
		newPage.Parent = pagesFolder
		newPage.Active = true
		newPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		newPage.BackgroundTransparency = 1.000
		newPage.BorderSizePixel = 0
		newPage.Position = UDim2.new(0.0189573467, 0, 0.0211640205, 0)
		newPage.Size = UDim2.new(0, 408, 0, 364)
		newPage.CanvasSize = UDim2.new(0, 0, 3, 4)
		newPage.ScrollBarThickness = 6
		newPage.Visible = false

		ElementsListing.Name = "ElementsListing"
		ElementsListing.Parent = newPage
		ElementsListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
		ElementsListing.SortOrder = Enum.SortOrder.LayoutOrder
		ElementsListing.Padding = UDim.new(0, 9)
		
		tabButton.Name = "tabButton"
		tabButton.Parent = allTabs
		tabButton.BackgroundColor3 = Color3.fromRGB(31,31,31)
		tabButton.Size = UDim2.new(0, 190, 0, 41)
		tabButton.Font = Enum.Font.SourceSansBold
		tabButton.Text = tabname
		tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		tabButton.TextSize = 24.000
		
		tabButton.MouseButton1Click:Connect(function()
			for i,v in next, pagesFolder:GetChildren() do
				v.Visible = false
			end
			newPage.Visible = true
			
                
                --Animations Below  -- Optional
                for i,v in next, allTabs:GetChildren() do	-- We get all the elements inside the frame
                    if v:IsA("TextButton") then -- We can't animate UIListLayout, so we check if its a TextButton
                        game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(47,47,47) 
                        }):Play()
                    end
                end
                game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    BackgroundColor3 = Color3.fromRGB(31,31,31) 
                }):Play()
            end)

            tabButton.MouseEnter:Connect(function()
                game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    BackgroundColor3 = Color3.fromRGB(47, 47, 47) 
                }):Play()
            end)

            tabButton.MouseLeave:Connect(function()
                game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    BackgroundColor3 = Color3.fromRGB(31,31,31) 
                }):Play()
            end)

		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = tabButton

        local ElementHandler = {}

        function ElementHandler:CreateLabel(labelText)
            local Label = Instance.new("TextLabel")
    
            Label.Name = "Label"
            Label.Parent = newPage
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1.000
            Label.Position = UDim2.new(-0.0196078438, 0, 0, 0)
            Label.Size = UDim2.new(0, 403, 0, 30)
            Label.Font = Enum.Font.SourceSans
            Label.Text = labelText
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 24.000
            Label.TextWrapped = true
        end

        function ElementHandler:CreateButton(btnText, callback)
            btnText = btnText or "Text Button"
            callback = callback or function() end

            local TextButton = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")

            TextButton.Parent = newPage
            TextButton.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            TextButton.Position = UDim2.new(0.0220588241, 0, 0.107142858, 0)
            TextButton.Size = UDim2.new(0, 358, 0, 41)
            TextButton.Font = Enum.Font.SourceSansBold
            TextButton.Text = btnText
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 24.000
            TextButton.MouseButton1Click:Connect(function()
                callback()
            end)


            TextButton.MouseEnter:Connect(function()
                game.TweenService:Create(TextButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    BackgroundColor3 = Color3.fromRGB(47, 47, 47) 
                }):Play()
            end)

            TextButton.MouseLeave:Connect(function()
                game.TweenService:Create(TextButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    BackgroundColor3 = Color3.fromRGB(31,31,31) 
                }):Play()
            end)

            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = TextButton
        end

        function ElementHandler:CreateToggle(togInfo, callback)
            togInfo = togInfo or "Toggle"
            callback = callback or function() end

            local toggleButton = Instance.new("TextButton")
            local toggleButtonCover = Instance.new("UICorner")
            local toggle = Instance.new("Frame")
            local toggleCorner = Instance.new("UICorner")
            local toggleInfo = Instance.new("TextLabel")

            --Properties:

            toggleButton.Name = "toggleButton"
            toggleButton.Parent = newPage
            toggleButton.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            toggleButton.Position = UDim2.new(0.0612745099, 0, 0.244505495, 0)
            toggleButton.Size = UDim2.new(0, 357, 0, 39)
            toggleButton.AutoButtonColor = false
            toggleButton.Font = Enum.Font.Gotham
            toggleButton.Text = ""
            toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            toggleButton.TextSize = 14.000

            toggleButtonCover.CornerRadius = UDim.new(0, 3)
            toggleButtonCover.Name = "toggleButtonCover"
            toggleButtonCover.Parent = toggleButton

            toggle.Name = "toggle"
            toggle.Parent = toggleButton
            toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            toggle.Position = UDim2.new(0.0184527915, 0, 0.102564104, 0)
            toggle.Size = UDim2.new(0, 30, 0, 30)

            toggleCorner.CornerRadius = UDim.new(0, 4)
            toggleCorner.Name = "toggleCorner"
            toggleCorner.Parent = toggle

            toggleInfo.Name = "toggleInfo"
            toggleInfo.Parent = toggleButton
            toggleInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            toggleInfo.BackgroundTransparency = 1.000
            toggleInfo.Position = UDim2.new(0.11937964, 0, 0.102564104, 0)
            toggleInfo.Size = UDim2.new(0, 314, 0, 32)
            toggleInfo.Font = Enum.Font.Gotham
            toggleInfo.Text = togInfo
            toggleInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
            toggleInfo.TextSize = 18.000
            toggleInfo.TextXAlignment = Enum.TextXAlignment.Left

            local tog = false

            toggleButton.MouseButton1Click:Connect(function()
                tog = not tog
                callback(tog)
                if tog then
                    game.TweenService:Create(toggle, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(0, 255, 136)
                    }):Play()
                else
                    game.TweenService:Create(toggle, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                        BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                    }):Play()
                end
            end)
        end
        return ElementHandler
    end
    return TabHandler
	end

return WindowTable
