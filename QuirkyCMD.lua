--{ QuirkyCMD made by quirky anime boy (smokedoutlocedout on discord) }--
-- ty Destiny for adding more exec support <3
local cloneref = cloneref or function(a) return a end
local coreGui = cloneref(game:GetService("CoreGui"))
local players = cloneref(game:GetService("Players"))
local localPlayer = players.LocalPlayer

local function isElevatedStudioPlugin()
    local s, r = pcall(function()
        return coreGui:GetChildren()
    end)
    return s
end

local gethui = gethui or function()
	local folder
	if isElevatedStudioPlugin() then
		if coreGui:WaitForChild("RobloxGui"):FindFirstChild(".__gethui") then
			folder = coreGui:WaitForChild("RobloxGui"):FindFirstChild(".__gethui")
		else
			folder = Instance.new("Folder")
			folder.Name = '.__gethui'
			folder.Parent = coreGui:WaitForChild("RobloxGui")
		end
	else
		folder = localPlayer:WaitForChild'PlayerGui'
	end
	return folder
end

local quirkycmd = Instance.new("ScreenGui", gethui())
quirkycmd.Name = "quirkyCMD"
quirkycmd.IgnoreGuiInset = true
quirkycmd.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
quirkycmd.ResetOnSpawn = false
quirkycmd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local remotepath = Instance.new("TextLabel")
remotepath.Name = "remotepath"
remotepath.Text = ""
remotepath.TextColor3 = Color3.fromRGB(255, 255, 255)
remotepath.TextScaled = true
remotepath.TextSize = 14
remotepath.TextTransparency = 0.6
remotepath.TextWrapped = true
remotepath.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
remotepath.BackgroundTransparency = 0.6
remotepath.BorderColor3 = Color3.fromRGB(0, 0, 0)
remotepath.BorderSizePixel = 0
remotepath.Position = UDim2.fromScale(0.396, 0.249)
remotepath.Size = UDim2.fromScale(0.208, 0.044)

local uicorner = Instance.new("UICorner")
uicorner.Name = "UICorner"
uicorner.CornerRadius = UDim.new(0, 3)
uicorner.Parent = remotepath

remotepath.Parent = quirkycmd

local cmdbox = Instance.new("TextBox")
cmdbox.Name = "cmdBox"
cmdbox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
cmdbox.PlaceholderText = "QuirkyCmd loaded"
cmdbox.Text = ""
cmdbox.TextColor3 = Color3.fromRGB(200, 200, 200)
cmdbox.TextScaled = true
cmdbox.TextSize = 12
cmdbox.TextTruncate = Enum.TextTruncate.AtEnd
cmdbox.TextWrapped = true
cmdbox.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
cmdbox.BorderColor3 = Color3.fromRGB(59, 59, 59)
cmdbox.BorderSizePixel = 3
cmdbox.Position = UDim2.fromScale(0.396, 0.25)
cmdbox.Size = UDim2.fromScale(0.208, 0.0441)

local uitextsizeconstraint = Instance.new("UITextSizeConstraint")
uitextsizeconstraint.Name = "UITextSizeConstraint"
uitextsizeconstraint.MaxTextSize = 18
uitextsizeconstraint.Parent = cmdbox

cmdbox.Parent = quirkycmd

local mobileopen = Instance.new("TextButton")
mobileopen.Name = "mobileOpen"
mobileopen.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
mobileopen.Text = "CMD"
mobileopen.TextColor3 = Color3.fromRGB(200, 200, 200)
mobileopen.TextScaled = true
mobileopen.TextSize = 14
mobileopen.TextWrapped = true
mobileopen.AnchorPoint = Vector2.new(1, 0)
mobileopen.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
mobileopen.BorderColor3 = Color3.fromRGB(0, 0, 0)
mobileopen.BorderSizePixel = 0
mobileopen.Position = UDim2.fromScale(1, 0.25)
mobileopen.Size = UDim2.fromScale(0.0346, 0.0734)

local uicorner1 = Instance.new("UICorner")
uicorner1.Name = "UICorner"
uicorner1.CornerRadius = UDim.new(0, 3)
uicorner1.Parent = mobileopen

mobileopen.Parent = quirkycmd

local cmds = Instance.new("Frame")
cmds.Name = "cmds"
cmds.Active = true
cmds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cmds.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmds.BorderSizePixel = 0
cmds.Position = UDim2.fromScale(0.446, 0.305)
cmds.Size = UDim2.fromScale(0.108, 0.389)
cmds.Parent = quirkycmd

local cmdlist = Instance.new("ScrollingFrame")
cmdlist.Name = "cmdList"
cmdlist.AutomaticCanvasSize = Enum.AutomaticSize.Y
cmdlist.CanvasSize = UDim2.new()
cmdlist.ScrollBarThickness = 8
cmdlist.ScrollingDirection = Enum.ScrollingDirection.Y
cmdlist.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
cmdlist.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmdlist.BorderSizePixel = 0
cmdlist.Position = UDim2.fromScale(0, 0.0566)
cmdlist.Size = UDim2.fromScale(1, 0.943)

local template = Instance.new("TextLabel")
template.Name = "template"
template.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
template.Text = "error occured, dm quirky"
template.TextColor3 = Color3.fromRGB(200, 200, 200)
template.TextScaled = true
template.TextSize = 14
template.TextWrapped = true
template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
template.BackgroundTransparency = 1
template.BorderColor3 = Color3.fromRGB(0, 0, 0)
template.BorderSizePixel = 0
template.Size = UDim2.fromScale(0.9, 0.1)
template.Parent = cmdlist

local uilistlayout = Instance.new("UIListLayout")
uilistlayout.Name = "UIListLayout"
uilistlayout.Padding = UDim.new(0, 5)
uilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
uilistlayout.Parent = cmdlist

cmdlist.Parent = cmds

local closebutton = Instance.new("TextButton")
closebutton.Name = "closeButton"
closebutton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
closebutton.Text = "Close"
closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebutton.TextScaled = true
closebutton.TextSize = 14
closebutton.TextWrapped = true
closebutton.Active = false
closebutton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebutton.BorderSizePixel = 0
closebutton.Size = UDim2.fromScale(1, 0.0566)
closebutton.Parent = cmds

if not game:IsLoaded() then game.Loaded:Wait() end

--[[Variables]]--
local debugOutput = true
local checkTime = 0.33
local UGCVS = game:GetService("UGCValidationService")
local uis = game:GetService("UserInputService")
local sgui = game:GetService("StarterGui")
local rs = game:GetService("RunService")
local rStorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local genv = (getgenv and (getgenv() ~= getfenv()) and getgenv()) or _G
local gethiddenproperty = gethiddenproperty or (pcall(UGCVS.GetPropertyValue,UGCVS,workspace,"Name") and function(i, v) return UGCVS:GetPropertyValue(i, v) end)
local sethiddenproperty = sethiddenproperty or function(inst,i,v) inst[i] = v end
local isnetworkowner = isnetworkowner or function(part) return part.ReceiveAge == 0 end
local isMobile = uis.TouchEnabled
local isTesting = game.PlaceId == 16245218863
local modernChat = game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService
local mobileOffset = isMobile and 0.25 or 0
local prefix = ";"
-- credits to itzyaboyluq on github for the word list
local wordList = {"delete", "remove", "destroy", "clean", "clear","bullet", "bala", "shoot", "shot", "fire", "segway", "handless", "sword", "attack", "despawn", "deletar", "apagar"}
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera
local mouse = localPlayer:GetMouse()
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait() 
local bodyColors = character:WaitForChild("Body Colors",0.1) or character:WaitForChild("Head"):WaitForChild("HatAttachment") or character:WaitForChild("Head")
local gui = quirkycmd or localPlayer:FindFirstChildOfClass("PlayerGui"):FindFirstChild("quirkyCMD")
local box = gui:WaitForChild("cmdBox")
local mobileButton = gui:WaitForChild("mobileOpen")
local cmdsFrame = gui:WaitForChild("cmds")
local cmdsList = cmdsFrame:WaitForChild("cmdList")
local cmdTemplate = cmdsList:WaitForChild("template")
local closeButton = cmdsFrame:WaitForChild("closeButton")
local remotePath = gui:WaitForChild("remotepath")
local visible = false
local connections = {}
local commands = {}
local remotes = {}
local services = {}
local bans = {}
local loopkills = {}
local wslocks = {}
local slockEnabled = false
local atts = {
	"BodyProportionScale",
	"BodyWidthScale",
	"BodyHeightScale",
	"BodyDepthScale",
	"HeadScale",
	"BodyTypeScale"
}
local limbs = {
	"arm",
	"leg",
	"foot"
}

-- credits to littlemike57 (uuid 3099053) on v3rmillion
local Iris
local irisCoroutine
if isTesting then
	irisCoroutine = coroutine.create(function()
		Iris = require(game:GetService("ReplicatedStorage"):WaitForChild("iris")).Init()
	end)
else
	irisCoroutine = coroutine.create(function()
		Iris = loadstring(game:HttpGet("https://raw.githubusercontent.com/someunknowndude/Iris-Exploit-Bundle/main/bundle.lua"))().Init()
	end)
end

coroutine.resume(irisCoroutine)

--[[Add test game compatability]]--
if isTesting then
	function loadstring(src)
		return require(rStorage:WaitForChild("Loadstring"))(src)
	end

	local files = localPlayer.PlayerGui:WaitForChild("workspace")

	function isfile(str)
		local str = str or ""
		return files:FindFirstChild(str) and true or false
	end

	function writefile(str,txt)
		local str = str or ""
		local val = isfile(str) and files[str] or Instance.new("StringValue", files)
		val.Name = str
		val.Value = txt
	end

	function readfile(str)
		local str = str or ""
		if not files:FindFirstChild(str) then return error("file " .. str .. " does not exist") end
		return files[str].Value
	end

	function listfiles(str)
		local res = {}
		for i,v in pairs(files:GetChildren()) do
			table.insert(res, v.Name)
		end
		return res
	end

	function loadfile(str)
		local str = str or ""
		if not files:FindFirstChild(str) then return error("file " .. str .. " does not exist") end
		return loadstring(files[str].Value)
	end
end

--[[Prepare UI]]--
cmdsFrame.Visible = false
cmdTemplate.Visible = false
mobileButton.Visible = false
box.Position = UDim2.new(0.5 - box.Size.X.Scale/2, 0,1,50)

--[[Misc. functions]]--
function debugPrint(...)
	if not debugOutput then return end
	warn(...)
end

debugPrint("loaded UI")

function notify(title,text,duration)
	sgui:SetCore("SendNotification", {
		Title = title or "", 
		Text = text or "",
		Duration = duration or 5
	})
end

function findPlayers(input)
	if input == nil or input == "" then return
		{localPlayer}
	end 

	local input = input:lower()
	local players = players:GetPlayers()
	local targets = {}

	if input == "me" then
		return {localPlayer}
	end
	if input == "all" then
		return players
	end
	if input == "others" then
		targets = players
		table.remove(targets,1)
		return targets
	end

	if input == "random" then
		return {players[math.random(1,#players)]}
	end

	for i,v in pairs(players) do
		local plrName = v.Name:lower()
		local plrDisplayName = v.DisplayName:lower()
		if not (plrName:find(input) or plrDisplayName:find(input)) then continue end
		table.insert(targets, v)
	end

	return targets
end

function abort()
	for i,v in pairs(connections) do
		if typeof(v) == "Instance" then v:Destroy() continue end
		v:Disconnect()
	end
	gui:Destroy()
	if modernChat then
		game:GetService("TextChatService").TextChannels["RBXGeneral"].OnIncomingMessage = nil
	end
	if Iris then
		Iris.Disabled = true
	end
	coroutine.yield(irisCoroutine)
end

local function lerp(a, b, m)
	return a + (b - a) * m
end

--[[Update variables]]--
table.insert(connections, localPlayer.CharacterAdded:Connect(function(char)
	character = char
	bodyColors = char:WaitForChild("Body Colors", 0.1) or char:WaitForChild("Head"):WaitForChild("HatAttachment", 0.1) or char:WaitForChild("Head") 
end))

--[[Add command bar hide/show logic]]--
local function toggleBar(focus)
	visible = not visible
	if visible then 
		box:TweenPosition(UDim2.new(0.5 - box.Size.X.Scale/2, 0,.25,0),Enum.EasingDirection.Out,Enum.EasingStyle.Back, 0.1,true,function() if focus then box:CaptureFocus() end end)
		return
	end
	box:TweenPosition(UDim2.new(0.5 - box.Size.X.Scale/2, 0,1,50),Enum.EasingDirection.Out,Enum.EasingStyle.Linear, 0.05,true)
end

table.insert(connections, uis.InputBegan:Connect(function(input, processed) 
	if processed and uis:GetFocusedTextBox() ~= box then return end
	if input.KeyCode ~= Enum.KeyCode.Semicolon then return end
	toggleBar(true)
	if visible then return end
	box:ReleaseFocus()
end))

--[[Find destroy remote & save to working games list]]--
genv.foundRemote = nil
local remoteJSON

local function hasFiles()
	return (isfile and readfile and writefile)
end

local function getGameList()
	if not isfile("quirky games.json") then
		writefile("quirky games.json", "[]") 
		return {} 
	end

	local content = readfile("quirky games.json")
	return game:GetService("HttpService"):JSONDecode(content)
end

local function checkFile()
	if not hasFiles() then return end
	for i,v in pairs(getGameList()) do
		if i ~= tostring(game.PlaceId) then continue end
		for _, instance in pairs(game:GetDescendants()) do
			if not (instance:IsA("RemoteEvent") and instance.Name == v) then continue end
			genv.foundRemote = instance
			remotePath.Visible = false
			break
		end
	end
end

local function sendGame()
	if isTesting then
		spawn(function()
			rStorage:WaitForChild("request"):InvokeServer("https://qcmd.000webhostapp.com/addgame?PlaceID=" .. tostring(game.PlaceId) .. "&Remote=" .. genv.foundRemote.Name)
		end)
		return
	end
	spawn(function()
		local res, err
		res,err = pcall(function()
			game:HttpGet("https://qcmd.000webhostapp.com/addgame?PlaceID=" .. tostring(game.PlaceId) .. "&Remote=" .. genv.foundRemote.Name)
		end)
		if res then return end
		-- retry game log if first one failed
		pcall(function()
			game:HttpGet("https://qcmd.000webhostapp.com/addgame?PlaceID=" .. tostring(game.PlaceId) .. "&Remote=" .. genv.foundRemote.Name)
		end)
	end)
end

local function addGame()
	local games = getGameList()
	games[tostring(game.PlaceId)] = genv.foundRemote.Name
	writefile("quirky games.json", game:GetService("HttpService"):JSONEncode(games))
	--sendGame()
end

local function checkDatabase()
	local res, succ, err
	if isTesting then 
		res = game:HttpGet("https://qcmd.000webhostapp.com/checkgame?PlaceID="..tostring(game.PlaceId))
	else
		res = rStorage:FindFirstChild("request"):InvokeServer("https://qcmd.000webhostapp.com/checkgame?PlaceID="..tostring(game.PlaceId))
	end
	if res == "no result" then return end
	succ, err = pcall(function()
		remoteJSON = game:GetService("HttpService"):JSONDecode(res)
	end)
	if succ then
		debugPrint(remoteJSON)
		for _, instance in pairs(game:GetDescendants()) do
			if not (instance:IsA("RemoteEvent") and instance.Name == remoteJSON[1]) then continue end
			genv.foundRemote = instance
			remotePath:Destroy()
			break
		end
	else
		debugPrint(err)
	end
end

debugPrint("initialised vars and funcs")
checkFile()
--task.spawn(checkDatabase)
remotePath.Text = "checking database..."
task.wait(0.5)

if not genv.foundRemote then
	for i,service in pairs(game:GetChildren()) do
		if service.ClassName == "ReplicatedStorage" or service.ClassName == "Workspace" then continue end
		table.insert(services, service)
	end

	local function checkRemote(remote)
		debugPrint(remote.Name)
		remotePath.Text = remote:GetFullName()
		local currentBC = bodyColors
		local currentChar = character
		remote:FireServer(bodyColors)
		task.wait(checkTime + mobileOffset + (localPlayer:GetNetworkPing()*2))
		if (#currentChar:GetChildren() < 7) or (#character:GetChildren() < 7) or (currentChar ~= localPlayer.Character) or (currentBC ~= bodyColors) or (bodyColors.Parent == character) or (currentBC.Parent == character) then return end
		genv.foundRemote = remote
		debugPrint("found!")
		remotePath.TextColor3 = Color3.new(0,1,0)
		task.wait(.5)
		remotePath.Visible = false
		return true
	end

	local function scan(instance, softScan)
		checkTime = softScan and 0.75 or 0.5
		for i,v in pairs(instance:GetDescendants()) do
			if genv.foundRemote then return end
			if not v:IsA("RemoteEvent") then continue end
			if v:FindFirstChild("__FUNCTION") then continue end
			table.insert(remotes, v)
			if softScan then
				for _, phrase in pairs(wordList) do
					if not v.Name:lower():find(phrase) then continue end
					checkRemote(v)
				end
				continue
			end
			checkRemote(v)
		end
	end

	debugPrint("soft rs")
	scan(game:GetService("ReplicatedStorage"), true)

	if not genv.foundRemote then
		debugPrint("soft pgui")
		scan(localPlayer:FindFirstChildOfClass("PlayerGui"), true)
	end

	if not genv.foundRemote then
		debugPrint("soft ws")
		scan(workspace, true)
	end

	if not genv.foundRemote then
		debugPrint("aggro rs")
		scan(game:GetService("ReplicatedStorage"), false)
	end

	if not genv.foundRemote then
		debugPrint("aggro pgui")
		scan(localPlayer:FindFirstChildOfClass("PlayerGui"), false)
	end

	if not genv.foundRemote then
		debugPrint("aggro ws")
		scan(workspace, false)
	end

	if not genv.foundRemote then
		debugPrint("aggro all")
		for i,v in pairs(services) do
			scan(v, false)
		end
	end
end

if not genv.foundRemote then 
	remotePath.Text = "no remote found, aborting..."
	task.wait(3)
	gui:Destroy() 
	return debugPrint("no silly remote found :(") 
end

if hasFiles() and getGameList()[tostring(game.PlaceId)] == nil then
	addGame()
end

function delete(instance)
	genv.foundRemote:FireServer(instance, nil)
	debugPrint("deleted instance " .. instance.Name)
end

genv.delete = delete

toggleBar(false)

--[[Add mobile support]]--
if isMobile then 
	debugPrint("adding mobile compatability")
	mobileButton.Visible = true
	box.Position = UDim2.new(0.5 - box.Size.X.Scale/2, 0,1,50)

	--[[Add button functionality]]--
	mobileButton.MouseButton1Click:Connect(function()
		toggleBar(true)

	end)

	--[[Add drag functionality]]--
	local dragging
	local dragInput
	local dragStart
	local startPos

	local lastMousePos
	local lastGoalPos
	local dragSpeed = 20

	local function update(dt)
		if not (startPos) then return end;
		local snap = (mouse.ViewSizeX - mouse.X) <= mouse.ViewSizeX/2 and 1 or mobileButton.Size.X.Scale
		if not (dragging) and (lastGoalPos) then
			mobileButton.Position = UDim2.new(lastGoalPos.X.Scale, 0, startPos.Y.Scale, lerp(mobileButton.Position.Y.Offset, lastGoalPos.Y.Offset, dt * dragSpeed))
			return 
		end;

		local delta = (lastMousePos - uis:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(snap,0, startPos.Y.Scale, yGoal)

		mobileButton.Position = UDim2.new(snap ,0, startPos.Y.Scale, lerp(mobileButton.Position.Y.Offset, yGoal, dt * dragSpeed))	
	end;

	mobileButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = mobileButton.Position
			lastMousePos = uis:GetMouseLocation()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	mobileButton.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	table.insert(connections,rs.Heartbeat:Connect(update))
end

--[[Add command logic]]--
function addCommand(cmdName, callback, aliases)
	table.insert(commands,{
		name = cmdName:lower(),
		callback = callback,
		aliases = aliases or {}
	})
end

function runCommand(cmdName, ...)
	for i,v in pairs(commands) do
		if (v.name ~= cmdName) and (not table.find(v.aliases,cmdName)) then continue end
		v.callback(...)
		break
	end
end

local function handleCommand(text)
	local split = text:split(" ")
	local command = split[1]
	local arg = split[2] or "me"
	runCommand(command, findPlayers(arg), arg)
end

--[[Add plugin support]]--
--[[
for i,v in pairs(listfiles("\\")) do
	if v:sub(-5,-1) ~= ".qcmd" then continue end
	loadfile(v)()
end
--]]

--[[Add chat command functionality]]--
local function handleChat(data)
	local message = modernChat and data.Text or data
	local plr = modernChat and game:GetService("Players"):GetPlayerByUserId(data.TextSource.UserId) or localPlayer
	if plr ~= localPlayer then return end
	local starter = message:sub(1,#prefix)
	if starter ~=  prefix then return end
	handleCommand(message:sub(#prefix+1,-1))
end

if modernChat then
	game:GetService("TextChatService").TextChannels["RBXGeneral"].OnIncomingMessage = function(data)
		handleChat(data)
	end
else
	table.insert(connections, localPlayer.Chatted:Connect(handleChat))
end

--[[Add command bar functionality]]--
table.insert(connections,box.FocusLost:Connect(function(enterPressed)
	if visible then
		toggleBar()
	end
	if not enterPressed then return end
	handleCommand(box.Text)
end))

--[[Create commands]]--
addCommand("cmds", function()
	cmdsFrame.Visible = true
end, {"commands"})

addCommand("prefix", function(plrs,newPrefix)
	prefix = newPrefix
end, {"setprefix"})

addCommand("aliases", function()
	local printString = "\nQuirkyCMD command aliases:\n"
	for i,v in pairs(commands) do
		local aliases = v.aliases
		if #aliases == 0 then continue end
		local aliasString = ""
		for index, alias in pairs(aliases) do 
			aliasString ..= alias .. (index == #aliases and "" or ", ")
		end
		printString ..= `{v.name}: [{aliasString}]\n`
	end
	print(printString)
end)

addCommand("explorer", function()
	local function addTree(Instance)
		local InstTree = Iris.Tree({Instance.Name})

		Iris.SameLine() do
			if Iris.SmallButton({"Delete"}).clicked then
				delete(Instance)
			end
			if Iris.SmallButton({"Clear children"}).clicked then
				for i,v in pairs(Instance:GetChildren()) do
					delete(v)
				end
			end
			Iris.End()
		end

		if InstTree.state.isUncollapsed.value then
			for i,v in pairs(Instance:GetChildren()) do
				addTree(v)
			end
		end
		Iris.End()
	end

	Iris:Connect(function()
		Iris.Window({"QCMD Explorer", [Iris.Args.Window.NoClose] = false}, {size = Iris.State(Vector2.new(200, 300)), position = Iris.State(Vector2.new(500, 75))}) do
			local priorityServices = {"Workspace", "Lighting", "Players", "ReplicatedStorage", "StarterPlayer", "StarterPack", "StarterGui"}
			for i,v in pairs(priorityServices) do
				addTree(game:GetService(v))
			end
			for i,v in pairs(game:GetChildren()) do
				if table.find(priorityServices, v.ClassName) then continue end
				addTree(v)
			end
			Iris.End()
		end
	end)
end, {"dex"})

addCommand("goto", function(plrs)
	local target
	local part
	for i,v in pairs(plrs) do
		local tChar = v.Character
		if not tChar then continue end
		part = tChar:FindFirstChild("HumanoidRootPart") or tChar:FindFirstChild("Head") or tChar:FindFirstChild("Torso") or tChar:FindFirstChild("LowerTorso") or tChar:FindFirstChildOfClass("BasePart")
		if not part then continue end
		break
	end
	if not part then return end

	character:PivotTo(part.CFrame * CFrame.new(0,0,2))
end, {"to"})

local viewConnection
addCommand("view", function(plrs)
	local target
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local hum = char:FindFirstChild("Humanoid") or char:FindFirstChild("HumanoidRootPart")
		if not hum then continue end
		target = hum
		break
	end
	if not target then return end
	if viewConnection then viewConnection:Disconnect() end
	viewConnection = players[target.Parent.Name].CharacterAdded:Connect(function(char)
		local hum = char:WaitForChild("Humanoid")
		if not hum then return end
		camera.CameraSubject = hum
	end)
	table.insert(connections,viewConnection)
	camera.CameraSubject = target
end, {"spectate"})

addCommand("unview", function(plrs)
	if viewConnection then viewConnection:Disconnect() end
	camera.CameraSubject = character.Humanoid or character:FindFirstChildOfClass("BasePart")
end)

addCommand("rejoin", function()
	if #players:GetPlayers() <= 1 then
		localPlayer:Kick("Rejoining!!")
		task.wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId, localPlayer)
		return
	end
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,localPlayer)
end, {"rj"})

addCommand("btools", function()
	sgui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
	if localPlayer.Backpack:FindFirstChild("wacky destroy tool") or (character and character:FindFirstChild("wacky destroy tool")) then
		return
	end

	local selection

	local destroyTool = Instance.new("Tool", localPlayer.Backpack)
	destroyTool.RequiresHandle = false
	destroyTool.CanBeDropped = false
	destroyTool.Name = "wacky destroy tool"
	destroyTool.ToolTip = "Click to destroy"
	destroyTool.TextureId = "rbxasset://Textures/Hammer.png"

	local selectionLoop

	destroyTool.Equipped:Connect(function()
		selection = Instance.new("SelectionBox",localPlayer.PlayerGui)
		table.insert(connections, selection)
		selectionLoop = rs.Heartbeat:Connect(function()
			local target = mouse.Target
			if target == nil then
				selection.Adornee = nil
				return 
			end
			if selection.Parent == nil then return end
			selection.Adornee = target
		end)
		table.insert(connections, selectionLoop)
	end)

	destroyTool.Unequipped:Connect(function()
		if not selection then return end
		selection:Destroy()
	end)

	destroyTool.Activated:Connect(function()
		local target = mouse.Target
		if target == nil then return end
		delete(target)
	end)

	local unweldTool = Instance.new("Tool", localPlayer.Backpack)
	unweldTool.RequiresHandle = false
	unweldTool.CanBeDropped = false
	unweldTool.Name = "wacky unweld tool"
	unweldTool.ToolTip = "Click to unweld"
	unweldTool.TextureId = "rbxassetid://4989743039"

	local selectionLoop

	unweldTool.Equipped:Connect(function()
		selection = Instance.new("SelectionBox",localPlayer.PlayerGui)
		table.insert(connections, selection)
		selectionLoop = rs.Heartbeat:Connect(function()
			local target = mouse.Target
			if target == nil then
				selection.Adornee = nil
				return 
			end
			if selection.Parent == nil then return end
			selection.Adornee = target
		end)
		table.insert(connections, selectionLoop)
	end)

	unweldTool.Unequipped:Connect(function()
		if not selection then return end
		selection:Destroy()
	end)

	unweldTool.Activated:Connect(function()
		local target = mouse.Target
		if target == nil then return end
		for i,v in pairs(target:GetDescendants()) do
			if not (v:IsA("Weld") or v:IsA("Attachment")) then continue end
			delete(v)
		end
	end)
end)

addCommand("gun", function()
	sgui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
	if not character then return end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if localPlayer.Backpack:FindFirstChild("wacky gun tool") or (character:FindFirstChild("wacky gun tool")) then
		return
	end

	local gunTool = Instance.new("Tool", localPlayer.Backpack)
	gunTool.RequiresHandle = false
	gunTool.CanBeDropped = false
	gunTool.Name = "wacky gun tool"
	gunTool.ToolTip = "Click a player to \"shoot\" them"
	gunTool.TextureId = "rbxassetid://822278164"


	local handle = Instance.new("Part", gunTool)
	handle.Name = "Handle"
	handle.Transparency = 1
	handle.CanCollide = false
	handle.Size = Vector3.new(0.001,0.001,0.001)
	handle.Massless = true

	local track
	gunTool.Activated:Connect(function()
		local target = mouse.Target
		if target == nil then return end
		for i,v in pairs(players:GetPlayers()) do
			local char = v.Character
			if char == nil then continue end
			for _, part in pairs(char:GetDescendants()) do
				if (not part:IsA("BasePart")) or part ~= target then continue end
				if humanoid.RigType == Enum.HumanoidRigType.R6 then
					track.TimePosition = 0.4
					task.wait(.25)
					track.TimePosition = 0.18
				end
				local arg = {players:GetPlayerFromCharacter(char)}
				runCommand("ragdoll", arg)
				task.wait(1.5)
				runCommand("kill", arg)
				break
			end
		end
	end)
	if humanoid.RigType ~= Enum.HumanoidRigType.R6 then return end

	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://33169583"
	track = humanoid:LoadAnimation(animation)
	track.Priority = Enum.AnimationPriority.Movement


	gunTool.Equipped:Connect(function()
		track:Play()
		task.wait()
		track:AdjustSpeed(0)
		track.TimePosition = 0.18
		track:AdjustWeight(0.95)
	end)


	gunTool.Unequipped:Connect(function()
		track:Stop()
	end)
end)

table.insert(connections,players.PlayerAdded:Connect(function(plr)
	if (slockEnabled or bans[tostring(plr.UserId)]) then
		task.wait()
		delete(plr)
	end
end))

addCommand("ban", function(plrs, input)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		if bans[tostring(v.UserId)] then continue end
		bans[tostring(v.UserId)] = input
		delete(v)
	end
end)

addCommand("unban", function(plrs, input)
	for i,v in pairs(bans) do
		if v == input or i == input then
			bans[i] = nil
		end
	end
end)

addCommand("kick", function(plrs)
	for i,v in pairs(plrs) do
		delete(v)
	end
end)


addCommand("kill", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		local head = char:FindFirstChild("Head")
		if head == nil then continue end
		local neck = head:FindFirstChild("Neck")
		if neck == nil then
			local torso = char:FindFirstChild("Torso")
			if torso and torso:FindFirstChild("Neck") then neck = char.Torso.Neck end
		end
		if humanoid and humanoid.RequiresNeck and neck then
			delete(neck)
			continue
		end
		delete(head)
	end
end)

table.insert(connections, rs.Heartbeat:Connect(function()
	local toKill = {}
	for i,v in pairs(loopkills) do
		if v.Parent ~= players then table.remove(toKill, i) continue end
		if not v.Character then continue end
		table.insert(toKill, v)
	end
	runCommand("kill", toKill)
end))

addCommand("loopkill", function(plrs, input)
	for i,v in pairs(plrs) do
		if table.find(loopkills, v) then continue end
		table.insert(loopkills, v)
	end
end)

addCommand("unloopkill", function(plrs, input)
	if input:lower() == "all" then loopkills = {} return end 
	for i,v in pairs(loopkills) do
		if not table.find(plrs, v) then continue end
		table.remove(loopkills, i)
	end
end)

addCommand("naked", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local pants = char:FindFirstChild("Pants")
		local shirt = char:FindFirstChild("Shirt")
		local tshirt = char:FindFirstChild("Shirt Graphic")

		if pants then delete(pants) end
		if shirt then delete(shirt) end
		if tshirt then delete(tshirt) end

		for _,instance in pairs(char:GetDescendants()) do
			if not instance:IsA("WrapLayer") then continue end
			delete(instance.Parent.Parent)
		end
	end
end)

addCommand("bald", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		for _,instance in pairs(char:GetChildren()) do
			if not instance:IsA("Accessory") then continue end
			delete(instance)
		end
	end
end, {"nohats"})


addCommand("nolimbs", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		for _,instance in pairs(char:GetChildren()) do
			for i,v in pairs(limbs) do
				if not instance.Name:lower():find(v) then continue end
				delete(instance)
			end
		end
	end
end)

addCommand("noface", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local head = char:FindFirstChild("Head")
		if head == nil then continue end
		for _,instance in pairs(head:GetChildren()) do
			if not instance:IsA("Decal") then continue end
			delete(instance)
		end
	end
end)

addCommand("korblox", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local r6Leg = char:FindFirstChild("Right Leg") 
		if  r6Leg then 
			delete(r6Leg)
			continue 
		end
		local r15Leg = char:FindFirstChild("RightUpperLeg")
		if not r15Leg then continue end
		delete(r15Leg)
	end
end)

addCommand("rescale", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not hum then continue end
		if hum.RigType ~= Enum.HumanoidRigType.R15 then continue end
		local function rm()
			for i,v in pairs(char:GetDescendants()) do
				if not v:IsA("BasePart") then continue end
				if v.Name == "Handle" or v.Name == "Head" then
					if not char.Head:FindFirstChild("OriginalSize") then continue end
					delete(char.Head.OriginalSize)
					continue
				end
				for i,cav in pairs(v:GetDescendants()) do
					if not cav:IsA("Attachment") then continue end
					local op = cav:FindFirstChild("OriginalPosition") 
					if not op then continue end
					delete(op)
				end
				local os = v:FindFirstChild("OriginalSize") 
				if os then
					delete(os)
				end
				local apst = v:FindFirstChild("AvatarPartScaleType")
				if not apst then continue end
				delete(apst)
			end
		end

		for i,v in pairs(atts) do
			rm()
			task.wait(.1)
			local scale = hum:FindFirstChild(v)
			if not scale then continue end
			delete(scale)
			task.wait(.1)
		end
	end
end, {"morph"})

addCommand("ragdoll", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local hrp = char:FindFirstChild("HumanoidRootPart")
		if hrp == nil then continue end
		delete(hrp)
	end
end, {"nohrp"})

addCommand("sink", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid == nil then continue end
		delete(humanoid)
	end
end, {"nohum","nohumanoid"})

addCommand("freeze", function(plrs)
	runCommand("ragdoll", plrs)
	runCommand("noanims", plrs)
end)

addCommand("noanims", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid == nil then continue end
		local animator = humanoid:FindFirstChildOfClass("Animator")
		if animator == nil then continue end
		delete(animator)
		local animate = char:FindFirstChild("Animate")
		if animate == nil then continue end
		delete(animate)
	end
end)

addCommand("invisible", function(plrs)
	local ignoreList = {"UpperTorso", "Head", "HumanoidRootPart", "Humanoid"}
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid == nil then continue end 
		if humanoid.RigType ~= Enum.HumanoidRigType.R15 then continue end
		for _,instance in pairs(char:GetChildren()) do 
			if table.find(ignoreList, instance.Name) then continue end
			delete(instance)
		end
		if humanoid.RootPart then humanoid.RootPart.Transparency = 0.6 end
	end
end, {"invis"})

addCommand("legwalk", function(plrs)
	local deleteList = {"LeftUpperArm","RightUpperArm"}
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid == nil then continue end 
		if humanoid.RigType ~= Enum.HumanoidRigType.R15 then continue end
		local upperTorso = char:FindFirstChild("UpperTorso")
		if upperTorso == nil then continue end
		local waist = upperTorso:FindFirstChild("Waist")
		if waist == nil then continue end
		for _,instance in pairs(char:GetChildren()) do 
			if not (table.find(deleteList, instance.Name) or instance:IsA("Accessory")) then continue end
			delete(instance)
		end
		delete(waist)
	end
end, {"split"})

addCommand("fakechat", function(plrs)
	if not character then return end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid.RigType ~= Enum.HumanoidRigType.R15 then return end
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not (humanoid and hrp) then return end
	local target
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		if not v.Character then continue end
		if not v.Character:FindFirstChild("HumanoidRootPart") then continue end
		target = v
		break
	end
	if not target then return end

	runCommand("unbang")
	runCommand("view", {target})
	hrp.CFrame = CFrame.new(0,2^63-3,0)
	task.wait(0.1)
	runCommand("invis", {localPlayer})

	local followLoop = rs.Heartbeat:Connect(function()
		if target.Character == nil then return end
		local thrp = target.Character:FindFirstChild("HumanoidRootPart")
		local thum = target.Character:FindFirstChild("Humanoid")
		if thrp == nil then return end
		local thrpVel = thrp.Velocity 
		local thrpPos = thrp.Position 
		local predictedCF = CFrame.new(thrpPos.X + thrpVel.X/4,thrpPos.Y,thrpPos.Z + thrpVel.Z/4)
		hrp.AssemblyAngularVelocity = Vector3.zero
		hrp.AssemblyLinearVelocity = Vector3.zero
		hrp.CFrame = (predictedCF*CFrame.new(0,3,-1.5))  * CFrame.Angles(math.rad(90),0,0)
	end)

	table.insert(connections,followLoop)
	table.insert(connections,humanoid.Died:Connect(function()
		if followLoop then followLoop:Disconnect() end
		runCommand("unview")
	end))
end)

addCommand("notools", function(plrs)
	for i,v in pairs(plrs) do
		for _, instance in pairs(v:FindFirstChildOfClass("Backpack"):GetChildren()) do
			if not instance:IsA("BackpackItem") then continue end
			delete(instance)
		end
		local char = v.Character
		if char == nil then continue end
		for _, instance in pairs(char:GetChildren()) do
			if not instance:IsA("BackpackItem") then continue end
			delete(instance)
		end
	end
end)

addCommand("stealtools", function(plrs)
	if not character then return end
	local lpHumanoid = character:FindFirstChildOfClass("Humanoid")
	if not lpHumanoid then return end
	for i,plr in pairs(plrs) do
		local char = plr.Character
		if char == nil then continue end
		local head = char:FindFirstChild("Head")
		if head == nil then continue end
		delete(head)
		task.wait(0.05)
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid then
			delete(humanoid)
		end
		repeat task.wait() until char:FindFirstChildOfClass("Humanoid") == nil
		task.wait(.05)
		for i,v in pairs(char:GetChildren()) do
			if not (v:IsA("BackpackItem") and v:FindFirstChild("Handle")) then continue end
			debugPrint(v.Name)
			v.Handle.CFrame = character.Humanoid.RootPart.CFrame
			lpHumanoid:EquipTool(v)
		end
	end
end)

addCommand("punish", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		delete(char)
	end
end)

addCommand("bang", function(plrs) -- credit to the Infinite Yield team
	if not character then return end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end
	runCommand("unbang")
	local target
	for i,v in pairs(plrs) do
		if not v.Character then continue end
		if not v.Character:FindFirstChildOfClass("Humanoid") then continue end
		if not v.Character.Humanoid.RootPart then continue end
		target = v
		break
	end
	bangAnim = Instance.new("Animation")
	bangAnim.AnimationId = (humanoid.RigType ~= Enum.HumanoidRigType.R15) and "rbxassetid://148840371" or "rbxassetid://5918726674"
	bang = humanoid:LoadAnimation(bangAnim)
	bang:Play(0.1, 1, 1)
	bang:AdjustSpeed(3)
	bangLoop = nil
	bangDied = nil;bangDied = humanoid.Died:Connect(function()
		bang:Stop()
		bangAnim:Destroy()
		bangDied:Disconnect()
		if bangLoop then bangLoop:Disconnect() end
	end)
	if target == localPlayer then return end
	bangLoop = rs.Stepped:Connect(function()
		if target.Character == nil then return end
		local hum = target.Character:FindFirstChildOfClass("Humanoid")
		if hum == nil then return end
		local root = hum.RootPart
		if root == nil then return end
		character:PivotTo(root.CFrame * CFrame.new(0, 0.75, 1.1))
	end)
	table.insert(connections,bangLoop)
end)

addCommand("unbang", function()
	if bangDied then bangDied:Disconnect() end
	if bang then bang:Stop() end
	if bangAnim then bangAnim:Destroy() end
	if bangLoop then bangLoop:Disconnect() end
end)

addCommand("clearstarter", function()
	for i,v in pairs(sgui:GetChildren()) do
		delete(v)
	end
	for i,v in pairs(game:GetService("StarterPack"):GetChildren()) do
		delete(v)
	end
	for i,v in pairs(game:GetService("StarterPlayer"):FindFirstChildOfClass("StarterPlayerScripts"):GetChildren()) do
		delete(v)
	end
	for i,v in pairs(game:GetService("StarterPlayer"):FindFirstChildOfClass("StarterCharacterScripts"):GetChildren()) do
		delete(v)
	end
end, {"clearstarters"})

addCommand("cleargui", function()
	for i,v in pairs(sgui:GetChildren()) do
		delete(v)
	end
end,{"clearsgui", "clearguis"})

addCommand("nochat",function()
	local chatEvents = rStorage:FindFirstChild("DefaultChatSystemChatEvents")
	if chatEvents then return delete(chatEvents) end
	for i,v in pairs(game:GetService("TextChatService"):GetChildren()) do
		delete(v)
	end
end, {"breakchat"})

addCommand("nostats", function(plrs)
	for i,v in pairs(plrs) do
		local stats = v:FindFirstChild("leaderstats")
		if stats == nil then return end
		delete(stats)
	end
end)

addCommand("deletename", function(plrs, input)
	for i,v in pairs(game:GetDescendants()) do
		local match = v.Name:lower():gsub(" ","")
		if not match:match(input:lower()) then continue end
		delete(v)
	end
end)

addCommand("clearws", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		delete(v)
	end
end)

addCommand("lockws", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:FindFirstChild(v.Name) then continue end
		local con = v.ChildAdded:Connect(function(instance)
			if players:FindFirstChild(instance.Parent.Name) then return end
			task.wait()
			delete(instance)
		end)
		table.insert(connections,con)
		table.insert(wslocks,con)
	end
	local con = workspace.ChildAdded:Connect(function(instance)
		if players:FindFirstChild(instance.Name) then return end
		task.wait()
		delete(instance)
	end)
	table.insert(connections,con)
	table.insert(wslocks,con)
end)

addCommand("unlockws", function()
	for i,v in pairs(wslocks) do
		v:Disconnect()
	end
end)

addCommand("notextures", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		for _,instance in pairs({v, table.unpack(v:GetDescendants())}) do
			if not (instance:IsA("Decal") or instance:IsA("Texture")) then continue end
			delete(instance)
		end
	end
end)

addCommand("baseplate", function()
	if not character then return end
	local hum = character:FindFirstChildOfClass("Humanoid")
	if not hum then return end
	local hrp = hum.RootPart
	if not hrp then return end
	local params = RaycastParams.new()
	params.FilterDescendantsInstances = {character}
	params.FilterType = Enum.RaycastFilterType.Exclude
	params.IgnoreWater = true
	local rc = workspace:Raycast(hrp.Position, hrp.CFrame.UpVector*-10, params)

	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		for _,instance in pairs({v, table.unpack(v:GetDescendants())}) do
			if not (instance:IsA("BasePart")) then continue end
			if (rc and rc.Instance == instance) or instance.Size.Magnitude >= 1000 or instance.Name:lower():gsub(" ",""):find("baseplate") then continue end
			delete(instance)
		end
	end
end,{"platform"})

addCommand("nospawns", function()
	for i,v in pairs(workspace:GetDescendants()) do
		if not v:IsA("SpawnLocation") then continue end
		delete(v)
	end
end)

addCommand("unweldws", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		for _, instance in pairs(v:GetDescendants()) do
			if not (instance:IsA("Weld") or instance:IsA("Attachment")) then continue end
			delete(instance)
		end
		if not (v:IsA("Weld") or v:IsA("Attachment")) then continue end
		delete(v)
	end
end)

addCommand("noseats", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		for _, instance in pairs(v:GetDescendants()) do
			if not (instance:IsA("VehicleSeat") or instance:IsA("Seat")) then continue end
			delete(instance)
		end
		if not (v:IsA("VehicleSeat") or v:IsA("Seat")) then continue end
		delete(v)
	end
end)

addCommand("nosounds",function()
	for i,v in pairs(game:GetDescendants()) do
		if not v:IsA("Sound") then continue end
		delete(v)
	end
end)

addCommand("clearlighting",function()
	for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
		delete(v)
	end
end)

addCommand("shutdown", function()
	for i,v in pairs(players:GetPlayers()) do
		if i == 1 then continue end
		delete(v)
	end
	delete(localPlayer)
end)

addCommand("nuke",function() 
	for i,v in pairs(workspace:GetChildren()) do
		delete(v)
	end

	for i,v in pairs(players:GetPlayers()) do
		if i == 1 then continue end
		delete(v)
	end
end)

addCommand("serverlock",function()
	slockEnabled = true
end, {"slock"})

addCommand("unserverlock", function()
	slockEnabled = false
end, {"unslock"})

addCommand("sabotage", function()
	delete(genv.foundRemote)
end)

addCommand("close", abort)

local flyLoop
local flySpeed = 50
addCommand("fly",function() -- original made by apeyton
	local hum = character:FindFirstChildOfClass("Humanoid")
	if not hum then return end
	
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not hrp then return end
	
	hum.PlatformStand = true
	hrp.Anchored = true
	
	if flyLoop then flyLoop:Disconnect() end
	flyLoop = rs.Heartbeat:Connect(function(deltaTime)
		local moveDir = hum.MoveDirection * (flySpeed * deltaTime)
		local hrpCF = hrp.CFrame
		local cameraCF = camera.CFrame
		local cameraOffset = hrpCF:ToObjectSpace(cameraCF).Position
		cameraCF = cameraCF * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
		local cameraPos = cameraCF.Position
		local hrpPos = hrpCF.Position

		local objectSpaceVelocity = CFrame.new(cameraPos, Vector3.new(hrpPos.X, cameraPos.Y, hrpPos.Z)):VectorToObjectSpace(moveDir)
		hrp.CFrame = CFrame.new(hrpPos) * (cameraCF - cameraPos) * CFrame.new(objectSpaceVelocity)
	end)
end)

addCommand("unfly",function()
	if not flyLoop then return end
	flyLoop:Disconnect()
	local hum = character:FindFirstChildOfClass("Humanoid")
	if hum then hum.PlatformStand = false end
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if hrp then hrp.Anchored = false end

end)

addCommand("flyspeed",function(plrs,input)
	flySpeed = tonumber(input) or 50
end)

local noclipLoop
addCommand("noclip", function()
	if noclipLoop then noclipLoop:Disconnect() end
	noclipLoop = rs.Stepped:Connect(function()
		for i,v in pairs(character:GetDescendants()) do
			if not (v:IsA("BasePart") and v.CanCollide) then continue end
			v.CanCollide = false
		end
	end)
end, {"nc"})

addCommand("clip",function()
	if noclipLoop then noclipLoop:Disconnect() end
end, {"c"})

-- credits to @xyzkade and @deuces1961 for Kade's reanim as a base
addCommand("reanim",function() 
	local char = localPlayer.Character or localPlayer.CharacterAdded:Wait()
	local hum = char:WaitForChild("Humanoid")
	local simRadius = gethiddenproperty and gethiddenproperty(localPlayer,"SimulationRadius")
	local requiredRadius = 20
	local isR15 = hum.RigType == Enum.HumanoidRigType.R15
	local forcefield = char:FindFirstChildOfClass("ForceField")
	local fakeHum = hum:Clone()
	local hrp = char:WaitForChild("HumanoidRootPart")
	local hrpCF = hrp.CFrame
	local stopAlign = false
	local stopAntiVoid = false
	local limbs = {}
	local hatHandles = {}

	runCommand("clip")

	if simRadius and simRadius < requiredRadius then
		notify("Please Wait",`Waiting for bigger SimulationRadius ({tostring(math.floor(simRadius))}/{tostring(requiredRadius)})`, 7)
		repeat task.wait() until gethiddenproperty(localPlayer,"SimulationRadius") >= requiredRadius
		if localPlayer.Character == nil or localPlayer.Character ~= char or hum.Parent == nil or hum.Health <= 0 then return end
	end
	
	if forcefield then forcefield:Destroy() end
	char.Archivable = true

	local rig = (not isR15) and char:Clone()
	
	if isR15 then
		local canGetObjects = pcall(function() return game:GetObjects("rbxassetid://18418211383")[1] end)
		local r6Rig = isTesting and rStorage:WaitForChild("R6Rig")  or canGetObjects or loadstring(game:HttpGet("https://gist.githubusercontent.com/someunknowndude/ad264038a91f7fa11bec2f67dad3feaf/raw"))()
		local humDesc = players:GetCharacterAppearanceAsync(localPlayer.UserId)
		local r6Head = r6Rig.Head
		local r15Head = char.Head
		local surfaceAppearance = r15Head:FindFirstChildOfClass("SurfaceAppearance")
		local face = r15Head:FindFirstChild("face")

		if surfaceAppearance then 
			surfaceAppearance:Clone().Parent = r6Head
		else
			if face then r6Head.face.Texture = face.Texture end
			r6Head.face.Transparency = 0
		end
		
		for i,v in pairs(r15Head:GetChildren()) do
			if not v:IsA("Attachment") then continue end
			v:Clone().Parent = r6Head
		end
		
		for i,v in pairs(humDesc:GetDescendants()) do
			if v:IsA("BodyColors") or v:IsA("CharacterMesh") or v:IsA("ShirtGraphic") then
				v.Parent = r6Rig
				continue
			end
			if v:IsA("Accessory") or v:IsA("Hat")  then
				r6Rig:WaitForChild("Humanoid"):AddAccessory(v)
			end
		end
		
		
		rig = r6Rig
	else
		local mesh = char.Head:FindFirstChildOfClass("SpecialMesh")
		local face = char.Head:FindFirstChild("face")
		if mesh and face then
			delete(face)
		end
	end	
	
	local rigHRP = rig:WaitForChild("HumanoidRootPart")
	local rigHum = rig:FindFirstChild("Humanoid")

	rig.Name = "wacky reanim rig"

	
	for i,v in pairs(char:GetChildren()) do
		if not v:IsA("BasePart") then continue end
		table.insert(limbs, {v,rig[v.Name]})
	end
	

	local accessories = hum:GetAccessories()
	local rigAccessories = rigHum:GetAccessories()

	for i,v in pairs(accessories) do
		if not isR15 then
			table.insert(hatHandles,{v.Handle,rigAccessories[i].Handle})
			continue
		end
		for _,rigAcc in pairs(rigAccessories) do
			local handle = rigAcc.Handle
			local mesh = handle:FindFirstChildOfClass("SpecialMesh") or handle
			local texture = handle == mesh and mesh.TextureID or mesh.TextureId
			if not (rigAcc.Name == v.Name and mesh.MeshId == v.Handle.MeshId and texture == v.Handle.TextureID) then continue end
			table.insert(hatHandles,{v.Handle,rigAcc.Handle})
			continue 
		end
	end

	local clock = os and os.clock or tick
	local cos = math.cos
	local sin = math.sin
	local cfNew = CFrame.new
	local cfZero = CFrame.identity
	local v3New = Vector3.new
	local v3Zero = Vector3.zero

	local changedMaxSimRad = pcall(sethiddenproperty, localPlayer, "MaximumSimulationRadius", 1000)
	local changedSimRad = pcall(sethiddenproperty, localPlayer, "SimulationRadius", 1000)
	local canChangeSimRad = changedSimRad and changedMaxSimRad
	local netlessCF = cfZero
	local sineValue = 0


	local function align(part0, part1, offset)
		if stopAlign then return end
		if part0 and part0.Parent and part1 and part1.Parent then
			local part0_mass = part1.Mass * 5
			part0.AssemblyLinearVelocity = v3New(part1.AssemblyLinearVelocity.X * part0_mass, sineValue, part1.AssemblyLinearVelocity.Z * part0_mass)
			part0.AssemblyAngularVelocity = part1.AssemblyAngularVelocity

			if isnetworkowner(part0) then
				part0.CFrame = part1.CFrame * offset
			end
		end
	end

	local function setCamera(model)
		local old_cam_cf = camera.CFrame
		camera.CameraSubject = model.Humanoid
		camera:GetPropertyChangedSignal("CFrame"):Once(function()
			camera.CFrame = old_cam_cf
		end)
	end

	local function disableCollisions(model,canTouchAndCast)
		for _, part in next, model:GetDescendants() do
			if part and part:IsA("BasePart") then
				part.CanCollide = false
				part.CanQuery = canTouchAndCast
				part.CanTouch = canTouchAndCast
			end
		end
	end

	local function makeTransparent(model)
		for i,v in pairs(model:GetDescendants()) do
			if not (v:IsA("BasePart") or v:IsA("Decal")) then continue end
			v.Transparency = 1
		end
	end

	local function breakWelds(model)
		for i,v in pairs(model:GetDescendants()) do
			if not v:IsA("Motor6D") then continue end
			delete(v)
		end
	end

	local function removeScripts(model)
		for i,v in pairs(model:GetChildren()) do
			if not (v:IsA("Script") or v:IsA("LocalScript") or v:IsA("ModuleScript") or v.Name == "Animate") then continue end
			delete(v)
		end
	end
	
	local function removeTouchTriggers(model)
		for i,v in pairs(model:GetDescendants()) do
			if not v:IsA("TouchTransmitter") then continue end
			delete(v)
		end
	end

	local function onPostSim()
		if canChangeSimRad then
			sethiddenproperty(localPlayer, "MaximumSimulationRadius", 1000)
			sethiddenproperty(localPlayer, "SimulationRadius", 1000)
		end

		for _, data in next, limbs do
			align(data[1], data[2],netlessCF)
		end

		for _, data in next, hatHandles do
			align(data[1], data[2], netlessCF)
		end
	end

	local function onPreSim()
		netlessCF = cfNew(0.01 * sin(clock()*16), 0, 0.01 * math.cos(clock()*16))
		sineValue = 40 - 3 * sin(clock()*10)
		
		if stopAntiVoid or rigHRP.Position.Y > (workspace.FallenPartsDestroyHeight + 50) then return end
		rigHRP.CFrame = hrpCF
		rigHRP.AssemblyLinearVelocity = v3Zero
		rigHRP.AssemblyAngularVelocity = v3Zero
	end


	rigHRP.CFrame = hrpCF
	rig.Parent = workspace
	localPlayer.Character = rig
	setCamera(rig)
	rig.Animate.Enabled = false
	rig.Animate.Enabled = true
	hum:ChangeState(Enum.HumanoidStateType.Physics)
	repeat task.wait() until limbs[3][1].CanCollide
	task.wait(0.05)
	delete(hum)
	repeat task.wait() until hum.Parent == nil
	task.wait()
	fakeHum.Parent = char
	task.wait()
	rs.PreSimulation:Connect(onPreSim)
	rs.PostSimulation:Connect(onPostSim)
	rs.Stepped:Connect(function()
		disableCollisions(char,false)
		disableCollisions(rig,true)
	end)
	
	breakWelds(char)
	makeTransparent(char)
	removeScripts(char)
	removeTouchTriggers(char)
	

	if isTesting then
		genv.LoadLibrary = function(lib) return loadstring(rStorage:WaitForChild("request"):InvokeServer("https://raw.githubusercontent.com/Roblox/Core-Scripts/master/CoreScriptsRoot/Libraries/" .. lib .. ".lua"))() end
	else
		genv.LoadLibrary = function(lib) return loadstring(game:HttpGet("https://raw.githubusercontent.com/Roblox/Core-Scripts/master/CoreScriptsRoot/Libraries/" .. lib .. ".lua"))() end
	end


	local reset = Instance.new("BindableEvent")
	reset.Event:Connect(function()
		notify("Resetting", "Please wait ~6 seconds", 6)
		stopAntiVoid = true
		rigHRP.Anchored = true
		rigHRP.CFrame = CFrame.new(0,workspace.FallenPartsDestroyHeight + 5,0)
		task.wait(0.5)
		stopAlign = true
		rigHum:ChangeState(Enum.HumanoidStateType.Dead)
		localPlayer.CharacterAdded:Wait()
		rig:Destroy()
	end)

	sgui:SetCore("ResetButtonCallback", reset)
end)

--[[Add scrolling command list]]--
local scrollText = "QuirkyCMD made by smokedoutlocedout | type cmds for a list of commands | "
if not isMobile then
	scrollText ..= "press ; to open/close command bar | "
end
local charCount = 12
local spaces = 0
local scrollSpeed = 0.12 -- sec/char
local sample = scrollText..string.rep(" ", spaces)
local displayString = sample:sub(1, charCount)
local strlen = string.len(sample)

local counter = 1
local timer = 0

for i,v in pairs(scrollText:split("")) do
	if v ~= " " then continue end
	spaces += 1
end

table.insert(connections, rs.Heartbeat:Connect(function(dt)
	timer += dt
	if timer > scrollSpeed then
		while timer > scrollSpeed do
			timer -= scrollSpeed
			counter = (counter + 1)%strlen
		end

		if counter + charCount <= strlen then
			displayString = sample:sub(counter, counter + charCount)
		else
			displayString = sample:sub(counter, strlen)..sample:sub(1, counter + charCount - strlen)
		end
	end

	box.PlaceholderText = (("%s"):format(displayString))
end))

--[[Sort commands alphabetically]]--
table.sort(commands, function(a,b)
	return a.name < b.name
end)

--[[Add command list logic]]--
for i,v in pairs(commands) do
	local clone = cmdTemplate:Clone()
	clone.Text = v.name
	clone.Visible = true
	clone.Parent = cmdsList
end

table.insert(connections, closeButton.MouseButton1Click:Connect(function()
	cmdsFrame.Visible = false
end))

--[[Add drag functionality]]--
local dragging
local dragInput
local dragStart
local startPos

local lastMousePos
local lastGoalPos
local dragSpeed = 20

local function update(dt)
	if not (startPos) then return end;
	if not (dragging) and (lastGoalPos) then
		cmdsFrame.Position = UDim2.new(startPos.X.Scale, lerp(cmdsFrame.Position.X.Offset, lastGoalPos.X.Offset, dt * dragSpeed), startPos.Y.Scale, lerp(cmdsFrame.Position.Y.Offset, lastGoalPos.Y.Offset, dt * dragSpeed))
		return 
	end;

	local delta = (lastMousePos - uis:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	cmdsFrame.Position = UDim2.new(startPos.X.Scale, lerp(cmdsFrame.Position.X.Offset, xGoal, dt * dragSpeed), startPos.Y.Scale, lerp(cmdsFrame.Position.Y.Offset, yGoal, dt * dragSpeed))	
end;

cmdsFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = cmdsFrame.Position
		lastMousePos = uis:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

cmdsFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

table.insert(connections,rs.Heartbeat:Connect(update))