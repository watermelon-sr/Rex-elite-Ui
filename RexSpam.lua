local Settings = {
    Delay = 1.8, 
    Active = false,
    InvisibleChar = "\226\128\139",
    -- This string below is the secret to hiding your real name
    NameBypass = string.rep("\226\128\139", 200), 
    Symbols = {"@", "~", "<>", "^", "*"},
    
    ShortMessages = {
        [1] = "Kɪ Mᴀᴀ Pᴇʟᴅɪᴀ Rᴇx अब्बू Nᴇ 😹👑",
        [2] = "Kɪ Mᴀᴀ Kᴇ Bʜᴏꜱᴅᴇ Mᴇ Rᴇx अब्बू Nᴇ Mᴜᴛᴀ 🤢🔥",
        [3] = "Tᴀᴋʟᴜ Rᴇx अब्बू Kɪ GULAMI Kʀʀ Rʜᴇ 🤢🔥💞",
        [4] = "Kɪ Mᴀᴀ Mᴀʀʀ Gʏɪ 😩🔥🤲🏻",
        [5] = "Cʜᴜᴘ Cʜᴀᴡ Cʜᴀᴡ Kʀɴᴇ Wᴀʟᴇ Kᴜᴛɪʏᴇ 😭🖕🏻🔥",
        [6] = "Bᴇᴛᴀ Sᴀᴀɴs Aʀʜɪ H Cʏᴀ? Yᴀ Oxʏɢᴇɴ Bʟᴏᴄᴋ Hᴏɢʏɪ 🤢🦶🏿🔥",
        [7] = "Tᴇʀᴇ Tᴀᴋʟᴇ Bᴀᴀᴘ Kᴇ Sᴀᴀʀ Pʀ Aᴀɢ Lɢᴀᴋᴇ TᴍᴋB Mᴇ Lᴀᴀᴛ Gʜᴜsᴀᴅᴜɴɢᴀ ✌🏻🔥",
        [8] = "Kɪ Mᴀᴀ Kᴀ Sᴀᴀᴅᴀ ʙʜᴏsᴅᴀ ɴᴀɴɢᴀ ᴋʀᴅɪʏᴀ Rᴇx ɴᴇ 🤢🔥",
        [9] = "Tᴇʀɪ Mᴀᴀ Kɪ Cʜᴜᴛ Mᴇ Gᴏʟɪ Mᴀᴀʀ Dᴜɴɢᴀ ʙᴇᴛᴀ 😩🔥",
        [10] = "Rᴇx Aʙʙᴜ Sᴇ Pᴀɴɢᴀ Mᴀᴛ Lᴇ ʙʜɪᴋʜᴀʀɪ 😹👑"
    },
    
    LongRoasts = {
        [1] = "Tᴇʀɪ Mᴀ Kᴏ Bᴜʀɢᴇʀ Kʜᴀᴋᴇ ᴄᴏᴅᴜɴɢᴀ Gʜᴀʀ Gʜᴀʀ 🍔★",
        [2] = "Sᴘᴀᴍᴍᴇʀ Bᴀɴᴇɢᴀ Rɴᴅʏᴋᴇ Gᴜʟᴀᴀᴍ Lᴜɴᴅ Cʜᴜs 😄❌",
        [3] = "Tᴇʀɪ Mᴀ Jᴀɢɢᴜ Kᴀ Lᴜɴᴅ Lᴇᴋᴇ BᴀɴᴅᴀR Kɪ Tᴅᴀ Uᴄʜʟᴛɪ Eʏ 😭💔",
        [4] = "Sᴜɴᴀ Eʏ Tᴇʀɪ Mᴀ Rᴀɪʟ Mᴇ Hɪᴊᴅɪ Bᴀɴᴋᴇ Gʜᴜᴍᴛɪ ʜ 🤍🤎🧡💙",
        [5] = "ᴡᴇᴀᴋ ᴋᴇᴇᴅᴇ ᴄʜᴜᴅᴀɪ ᴋʜᴀ 🧸"
    }
}

local LP = game:GetService("Players").LocalPlayer
local CoreGui = game:GetService("CoreGui")
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "RexFinalV5"

-- // RGB COLOR SYNC
local CurrentRGB = Color3.new(1,1,1)
task.spawn(function()
    while task.wait() do CurrentRGB = Color3.fromHSV(tick() % 5 / 5, 1, 1) end
end)

-- // UI SETUP
local HubBox = Instance.new("Frame", ScreenGui)
HubBox.Size = UDim2.new(0, 350, 0, 200); HubBox.Position = UDim2.new(0.5, -175, 0.5, -100)
HubBox.BackgroundColor3 = Color3.fromRGB(12, 12, 12); HubBox.Active = true; HubBox.Draggable = true
Instance.new("UICorner", HubBox)

local ContinueBtn = Instance.new("TextButton", HubBox)
ContinueBtn.Size = UDim2.new(0, 160, 0, 45); ContinueBtn.Position = UDim2.new(0.5, -80, 0.72, 0); ContinueBtn.Text = "Continue"
Instance.new("UICorner", ContinueBtn)

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 260, 0, 250); Main.Position = UDim2.new(0.5, -130, 0.5, -110); Main.BackgroundColor3 = Color3.fromRGB(10, 10, 10); Main.Visible = false; Main.Active = true; Main.Draggable = true
Instance.new("UICorner", Main)

local Scroll = Instance.new("ScrollingFrame", Main)
Scroll.Size = UDim2.new(0.9, 0, 0.5, 0); Scroll.Position = UDim2.new(0.05, 0, 0.45, 0); Scroll.BackgroundTransparency = 1; Scroll.CanvasSize = UDim2.new(0, 0, 4, 0)
Instance.new("UIListLayout", Scroll)

local RoleInput = Instance.new("TextBox", Scroll)
RoleInput.Size = UDim2.new(1, 0, 0, 35); RoleInput.PlaceholderText = "CUSTOM ROLE"; RoleInput.Text = "CREATOR"
local SpyInput = Instance.new("TextBox", Scroll)
SpyInput.Size = UDim2.new(1, 0, 0, 35); SpyInput.PlaceholderText = "SPY NAME"; SpyInput.Text = "RexAbbu"
local TargetInput = Instance.new("TextBox", Main)
TargetInput.Size = UDim2.new(0.9, 0, 0, 35); TargetInput.Position = UDim2.new(0.05, 0, 0.15, 0); TargetInput.PlaceholderText = "TARGET NAME"

-- // THE SPY ENGINE
local function UniversalSend(msg)
    -- This pushes your real name out of the box and puts the fake info first
    local role = RoleInput.Text ~= "" and "["..RoleInput.Text.."] " or ""
    local spy = SpyInput.Text ~= "" and "["..SpyInput.Text.."]: " or ""
    local fakeHeader = role .. spy
    
    local finalMsg = Settings.NameBypass .. fakeHeader .. msg
    
    for _, obj in pairs(LP.PlayerGui:GetDescendants()) do
        if obj:IsA("TextBox") and obj.Visible and obj.Parent.Name ~= "Main" then
            if (obj.PlaceholderText or ""):lower():find("click here to chat") or (obj.Text:lower():find("click here")) then
                obj.FocusLost:Connect(function() end)
                obj.Text = finalMsg
                task.wait(0.05)
                -- Force Send
                game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                obj.Text = ""
                break
            end
        end
    end
end

-- // MODES
local function StartSpam(mode)
    Settings.Active = false; task.wait(0.1); Settings.Active = true
    local target = TargetInput.Text
    task.spawn(function()
        local i = 1
        while Settings.Active do
            local msg = (target ~= "" and target .. " " or "") .. Settings.ShortMessages[i]
            UniversalSend(msg)
            i = (i >= #Settings.ShortMessages) and 1 or i + 1
            task.wait(1.8)
        end
    end)
end

-- // BUTTONS
local function CreateBtn(txt, callback)
    local b = Instance.new("TextButton", Scroll); b.Size = UDim2.new(1, 0, 0, 35); b.Text = txt; b.MouseButton1Click:Connect(callback)
end

CreateBtn("START SHORT SPAM", function() StartSpam("Short") end)
CreateBtn("FORCE STOP", function() Settings.Active = false end)

ContinueBtn.MouseButton1Click:Connect(function() HubBox:Destroy(); Main.Visible = true end)
