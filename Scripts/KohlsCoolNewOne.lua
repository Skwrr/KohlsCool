local version = "4.5"
warn("Starting KohlsCool v"..version)

local RunService = game:GetService("RunService")

local prefix = ";" -- ONLY ONE CHARACTER
local function gui()
    local ScreenGui = Instance.new("ScreenGui")
    local main = Instance.new("Frame")
    local other = Instance.new("Frame")
    local spamgui = Instance.new("Frame")
    local label = Instance.new("TextLabel")
    local safechatgui = Instance.new("Frame")
    local closesafechat = Instance.new("TextButton")
    local spamlabel = Instance.new("TextLabel")
    local safechatlabel = Instance.new("TextLabel")
    local closegui = Instance.new("TextButton")
    local closespam = Instance.new("TextButton")
    local opengui = Instance.new("TextButton")
    local autoadmin = Instance.new("TextButton")
    local unautoadmin = Instance.new("TextButton")
    local gohouse = Instance.new("TextButton")
    local nok = Instance.new("TextButton")
    local spammer = Instance.new("TextButton")
    local findpads = Instance.new("TextButton")
    local findregen = Instance.new("TextButton")
    local rejoin = Instance.new("TextButton")
    local serverhop = Instance.new("TextButton")
    local previouspage = Instance.new("TextButton")
    local nextpage = Instance.new("TextButton")
    local spamtext = Instance.new("TextBox")
    local safechattext = Instance.new("TextBox")
    local spamsubmit = Instance.new("TextButton")
    local safechatsend = Instance.new("TextButton")
    local spamstop = Instance.new("TextButton")
    local safechat = Instance.new("TextButton")
    local antis = Instance.new("TextButton")
    local antisgui = Instance.new("Frame")
    local antislabel = Instance.new("TextLabel")
    local closeantisgui = Instance.new("TextButton")
    local antispreviouspage = Instance.new("TextButton")
    local antisnextpage = Instance.new("TextButton")
    local antikill = Instance.new("TextButton")
    local antipunish = Instance.new("TextButton")
    local antivoid = Instance.new("TextButton")
    local antijail = Instance.new("TextButton")
    local lockdownd = false
    local page = 0
    local maxpages = 1
    local antispage = 0
    local antismaxpages = 1
    local function openspamgui()
      spamgui.Visible = true
    end
    local function opensafechat()
      safechatgui.Visible = true
    end
    local function openantis()
      antisgui.Visible = true
    end
    local function check()
      if page == 1 then
        autoadmin.Visible = false
        unautoadmin.Visible = false
        gohouse.Visible = false
        nok.Visible = false
        spammer.Visible = false
        findpads.Visible = false
        findregen.Visible = false
        rejoin.Visible = false
        serverhop.Visible = false
  
        safechat.Visible = true
        antis.Visible = true
      end
    if page == 0 then
        autoadmin.Visible = true
        unautoadmin.Visible = true
        gohouse.Visible = true
        nok.Visible = true
        spammer.Visible = true
        findpads.Visible = true
        findregen.Visible = true
        rejoin.Visible = true
        serverhop.Visible = true
  
        safechat.Visible = false
        antis.Visible = false
      end
    end
    local function antischeck()
      if antispage == 1 then
        antikill.Visible = false
        antipunish.Visible = false
        antijail.Visible = false
        antivoid.Visible = false
      end
    if antispage == 0 then
        antikill.Visible = true
        antipunish.Visible = true
        antijail.Visible = true
        antivoid.Visible = true
      end
    end
  
    check()
    antischeck()
  
    ScreenGui.Parent = game.CoreGui
  
    main.Name = "main"
    main.Parent = ScreenGui
    main.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    main.Position = UDim2.new(0.195974731, 0, 0.289077687, 0)
    main.Size = UDim2.new(0, 607, 0, 300)
    main.Active = true
    main.Draggable = true
    main.Visible = false
    
    other.Name = "other"
    other.Parent = ScreenGui
    other.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    other.Position = UDim2.new(0, 0, 0.15, 0)
    other.Size = UDim2.new(0, 50, 0, 50)
    other.Active = true
    other.Draggable = true
    other.Visible = true
  
    spamgui.Name = "spamgui"
    spamgui.Parent = ScreenGui
    spamgui.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    spamgui.Position = UDim2.new(0.05, 0, 0.15, 0)
    spamgui.Size = UDim2.new(0, 300, 0, 100)
    spamgui.Active = true
    spamgui.Draggable = true
    spamgui.Visible = false
  
    safechatgui.Name = "safechatgui"
    safechatgui.Parent = ScreenGui
    safechatgui.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    safechatgui.Position = UDim2.new(0.05, 0, 0.15, 0)
    safechatgui.Size = UDim2.new(0, 300, 0, 100)
    safechatgui.Active = true
    safechatgui.Draggable = true
    safechatgui.Visible = false
  
    label.Name = "label"
    label.Parent = main
    label.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
    label.Size = UDim2.new(0, 607, 0, 50)
    label.Font = Enum.Font.SciFi
    label.Text = "KohlsCool GUI"
    label.TextColor3 = Color3.fromRGB(0, 0, 0)
    label.TextSize = 14.000
    
    closegui.Name = "closegui"
    closegui.Parent = label
    closegui.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
    closegui.Size = UDim2.new(0, 50, 0, 50)
    closegui.Font = Enum.Font.SciFi
    closegui.Text = "Hide"
    closegui.TextColor3 = Color3.fromRGB(0, 0, 0)
    closegui.TextSize = 14.000
    closegui.MouseButton1Up:Connect(function()
        main.Visible = not main.Visible
        other.Visible = not other.Visible
    end)
  
    opengui.Name = "opengui"
    opengui.Parent = other
    opengui.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
    opengui.Size = UDim2.new(0, 50, 0, 50)
    opengui.Font = Enum.Font.SciFi
    opengui.Text = "Show Gui"
    opengui.TextColor3 = Color3.fromRGB(0, 0, 0)
    opengui.TextSize = 14.000
    opengui.MouseButton1Up:Connect(function()
        main.Visible = not main.Visible
        other.Visible = not other.Visible
    end)
  
    autoadmin.Name = "autoadmin"
    autoadmin.Parent = main
    autoadmin.BackgroundColor3 = Color3.fromRGB(76, 100, 255)
    autoadmin.Position = UDim2.new(0.0148270177, 0, 0.206666663, 0)
    autoadmin.Size = UDim2.new(0, 180, 0, 50)
    autoadmin.Font = Enum.Font.SourceSans
    autoadmin.Text = "Enable Autoadmin"
    autoadmin.TextColor3 = Color3.fromRGB(0, 0, 0)
    autoadmin.TextSize = 25.000
    autoadmin.TextScaled = true
    autoadmin.TextWrapped = true
    autoadmin.MouseButton1Up:Connect(function()
        if lockdownd == false then
          game.Players:Chat(prefix.."noperm")
          game.Players:Chat(prefix.."toggle allpads")
          game.Players:Chat(prefix.."admin")
          game.Players:Chat(prefix.."unadmin "..game.Players.LocalPlayer.name)
          game.Players:Chat(prefix.."toggle autoadmin")
          game.Players:Chat(prefix.."autoadmin onjoin")
          wait(.2)
          game.Players:Chat(prefix.."removeregen")
          lockdownd = true
        end
    end)
  
    unautoadmin.Name = "unautoadmin"
    unautoadmin.Parent = main
    unautoadmin.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    unautoadmin.Position = UDim2.new(0.3398270177, 0, 0.206666663, 0)
    unautoadmin.Size = UDim2.new(0, 180, 0, 50)
    unautoadmin.Font = Enum.Font.SourceSans
    unautoadmin.Text = "Disable Autoadmin"
    unautoadmin.TextColor3 = Color3.fromRGB(0, 0, 0)
    unautoadmin.TextSize = 25.000
    unautoadmin.TextScaled = true
    unautoadmin.TextWrapped = true
    unautoadmin.MouseButton1Up:Connect(function()
        if lockdownd == true then
          game.Players:Chat(prefix.."perm")
          game.Players:Chat(prefix.."regen")
          game.Players:Chat(prefix.."toggle allpads")
          game.Players:Chat(prefix.."toggle autoadmin")
          game.Players:Chat(prefix.."autoadmin onjoin")
          wait(.2)
          game.Players:Chat(prefix.."bringregen")
          lockdownd = false
        end
    end)
  
    gohouse.Name = "gohouse"
    gohouse.Parent = main
    gohouse.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    gohouse.Position = UDim2.new(0.6598270177, 0, 0.206666663, 0)
    gohouse.Size = UDim2.new(0, 180, 0, 50)
    gohouse.Font = Enum.Font.SourceSans
    gohouse.Text = "TP House"
    gohouse.TextColor3 = Color3.fromRGB(0, 0, 0)
    gohouse.TextSize = 25.000
    gohouse.TextScaled = true
    gohouse.TextWrapped = true
    gohouse.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."gohouse")
    end)
  
    nok.Name = "nok"
    nok.Parent = main
    nok.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    nok.Position = UDim2.new(0.0148270177, 0, 0.406666663, 0)
    nok.Size = UDim2.new(0, 180, 0, 50)
    nok.Font = Enum.Font.SourceSans
    nok.Text = "Nok"
    nok.TextColor3 = Color3.fromRGB(0, 0, 0)
    nok.TextSize = 25.000
    nok.TextScaled = true
    nok.TextWrapped = true
    nok.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."nok")
    end)
  
    spammer.Name = "spammer"
    spammer.Parent = main
    spammer.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    spammer.Position = UDim2.new(0.3398270177, 0, 0.406666663, 0)
    spammer.Size = UDim2.new(0, 180, 0, 50)
    spammer.Font = Enum.Font.SourceSans
    spammer.Text = "Spam"
    spammer.TextColor3 = Color3.fromRGB(0, 0, 0)
    spammer.TextSize = 25.000
    spammer.TextScaled = true
    spammer.TextWrapped = true
    spammer.MouseButton1Up:Connect(function()
       openspamgui()
    end)
  
    findpads.Name = "findpads"
    findpads.Parent = main
    findpads.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    findpads.Position = UDim2.new(0.6598270177, 0, 0.406666663, 0)
    findpads.Size = UDim2.new(0, 180, 0, 50)
    findpads.Font = Enum.Font.SourceSans
    findpads.Text = "FindPads"
    findpads.TextColor3 = Color3.fromRGB(0, 0, 0)
    findpads.TextSize = 25.000
    findpads.TextScaled = true
    findpads.TextWrapped = true
    findpads.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."findpads")
    end)
  
    findregen.Name = "findregen"
    findregen.Parent = main
    findregen.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    findregen.Position = UDim2.new(0.0148270177, 0, 0.606666663, 0)
    findregen.Size = UDim2.new(0, 180, 0, 50)
    findregen.Font = Enum.Font.SourceSans
    findregen.Text = "FindRegen"
    findregen.TextColor3 = Color3.fromRGB(0, 0, 0)
    findregen.TextSize = 25.000
    findregen.TextScaled = true
    findregen.TextWrapped = true
    findregen.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."findregen")
    end)
  
    rejoin.Name = "rejoin"
    rejoin.Parent = main
    rejoin.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    rejoin.Position = UDim2.new(0.3398270177, 0, 0.606666663, 0)
    rejoin.Size = UDim2.new(0, 180, 0, 50)
    rejoin.Font = Enum.Font.SourceSans
    rejoin.Text = "Rejoin"
    rejoin.TextColor3 = Color3.fromRGB(0, 0, 0)
    rejoin.TextSize = 25.000
    rejoin.TextScaled = true
    rejoin.TextWrapped = true
    rejoin.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."rej")
    end)
  
    serverhop.Name = "serverhop"
    serverhop.Parent = main
    serverhop.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    serverhop.Position = UDim2.new(0.6598270177, 0, 0.606666663, 0)
    serverhop.Size = UDim2.new(0, 180, 0, 50)
    serverhop.Font = Enum.Font.SourceSans
    serverhop.Text = "Server Hop"
    serverhop.TextColor3 = Color3.fromRGB(0, 0, 0)
    serverhop.TextSize = 25.000
    serverhop.TextScaled = true
    serverhop.TextWrapped = true
    serverhop.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."hop")
    end)
  
    previouspage.Name = "previouspage"
    previouspage.Parent = main
    previouspage.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    previouspage.Position = UDim2.new(0.0148270177, 0, 0.806666663, 0)
    previouspage.Size = UDim2.new(0, 180, 0, 50)
    previouspage.Font = Enum.Font.SourceSans
    previouspage.Text = "<="
    previouspage.TextColor3 = Color3.fromRGB(0, 0, 0)
    previouspage.TextSize = 25.000
    previouspage.TextScaled = true
    previouspage.TextWrapped = true
    previouspage.MouseButton1Up:Connect(function()
        if page > 0 then
          page = page-1
        end
      check()
    end)
  
    nextpage.Name = "nextpage"
    nextpage.Parent = main
    nextpage.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    nextpage.Position = UDim2.new(0.6598270177, 0, 0.806666663, 0)
    nextpage.Size = UDim2.new(0, 180, 0, 50)
    nextpage.Font = Enum.Font.SourceSans
    nextpage.Text = "=>"
    nextpage.TextColor3 = Color3.fromRGB(0, 0, 0)
    nextpage.TextSize = 25.000
    nextpage.TextScaled = true
    nextpage.TextWrapped = true
    nextpage.MouseButton1Up:Connect(function()
        if page < maxpages then
          page = page+1
        end
      check()
    end)
  
    spamtext.Name = "spamtext"
    spamtext.Parent = spamgui
    spamtext.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
    spamtext.Position = UDim2.new(0.11, 0, 0.284536082, 0)
    spamtext.Size = UDim2.new(0, 250, 0, 45)
    spamtext.Font = Enum.Font.SourceSans
    spamtext.Text = "Command to spam"
    spamtext.TextColor3 = Color3.new(255, 255, 255)
    spamtext.TextScaled = true
    spamtext.TextSize = 14.000
    spamtext.TextWrapped = true
  
    spamsubmit.Parent = spamgui
    spamsubmit.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    spamsubmit.Position = UDim2.new(0.108, 0, 0.684536082, 0)
    spamsubmit.Size = UDim2.new(0, 150, 0, 25)
    spamsubmit.Font = Enum.Font.SourceSans
    spamsubmit.Text = "Start"
    spamsubmit.TextColor3 = Color3.new(255, 255, 255)
    spamsubmit.TextScaled = true
    spamsubmit.TextWrapped = true
    spamsubmit.TextSize = 14.000
    spamsubmit.MouseButton1Up:Connect(function()
        if spamtext.Text ~= nil and spamtext.Text ~= "" and spamtext.Text ~= "Command to spam" then
          game.Players:Chat(prefix.."spam "..spamtext.Text)
        end
    end)
  
    spamstop.Parent = spamgui
    spamstop.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    spamstop.Position = UDim2.new(0.458, 0, 0.684536082, 0)
    spamstop.Size = UDim2.new(0, 125, 0, 25)
    spamstop.Font = Enum.Font.SourceSans
    spamstop.Text = "Stop"
    spamstop.TextColor3 = Color3.new(255, 255, 255)
    spamstop.TextScaled = true
    spamstop.TextSize = 14.000
    spamstop.TextWrapped = true
    spamstop.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."stop")
    end)
  
    spamlabel.Name = "spamlabel"
    spamlabel.Parent = spamgui
    spamlabel.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
    spamlabel.Size = UDim2.new(0, 300, 0, 20)
    spamlabel.Font = Enum.Font.SciFi
    spamlabel.Text = "Spam GUI"
    spamlabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    spamlabel.TextSize = 12.000
  
    closespam.Name = "closespam"
    closespam.Parent = spamlabel
    closespam.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
    closespam.Size = UDim2.new(0, 20, 0, 20)
    closespam.Font = Enum.Font.SciFi
    closespam.Text = "X"
    closespam.TextColor3 = Color3.fromRGB(0, 0, 0)
    closespam.TextSize = 14.000
    closespam.MouseButton1Up:Connect(function()
        spamgui.Visible = false
    end)
  
    closesafechat.Name = "closesafechat"
    closesafechat.Parent = safechatlabel
    closesafechat.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
    closesafechat.Size = UDim2.new(0, 20, 0, 20)
    closesafechat.Font = Enum.Font.SciFi
    closesafechat.Text = "X"
    closesafechat.TextColor3 = Color3.fromRGB(0, 0, 0)
    closesafechat.TextSize = 14.000
    closesafechat.MouseButton1Up:Connect(function()
        safechatgui.Visible = false
    end)
  
    safechattext.Name = "safechattext"
    safechattext.Parent = safechatgui
    safechattext.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
    safechattext.Position = UDim2.new(0.11, 0, 0.284536082, 0)
    safechattext.Size = UDim2.new(0, 250, 0, 45)
    safechattext.Font = Enum.Font.SourceSans
    safechattext.Text = "Message"
    safechattext.TextColor3 = Color3.new(255, 255, 255)
    safechattext.TextScaled = true
    safechattext.TextSize = 14.000
    safechattext.TextWrapped = true
  
    safechatsend.Parent = safechatgui
    safechatsend.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    safechatsend.Position = UDim2.new(0.248000011, 0, 0.734536111, 0)
    safechatsend.Size = UDim2.new(0, 150, 0, 25)
    safechatsend.Font = Enum.Font.SourceSans
    safechatsend.Text = "Send"
    safechatsend.TextColor3 = Color3.new(255, 255, 255)
    safechatsend.TextScaled = true
    safechatsend.TextWrapped = true
    safechatsend.TextSize = 14.000
    safechatsend.MouseButton1Up:Connect(function()
        if safechattext.Text ~= nil and safechattext.Text ~= "" then
          game.Players:Chat(safechattext.Text)
        end
    end)
  
    safechatlabel.Name = "safechatlabel"
    safechatlabel.Parent = safechatgui
    safechatlabel.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
    safechatlabel.Size = UDim2.new(0, 300, 0, 20)
    safechatlabel.Font = Enum.Font.SciFi
    safechatlabel.Text = "SafeChat GUI"
    safechatlabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    safechatlabel.TextSize = 12.000
  
    safechat.Name = "safechat"
    safechat.Parent = main
    safechat.BackgroundColor3 = Color3.fromRGB(76, 100, 255)
    safechat.Position = UDim2.new(0.0148270177, 0, 0.206666663, 0)
    safechat.Size = UDim2.new(0, 180, 0, 50)
    safechat.Font = Enum.Font.SourceSans
    safechat.Text = "SafeChat"
    safechat.TextColor3 = Color3.fromRGB(0, 0, 0)
    safechat.TextSize = 25.000
    safechat.TextScaled = true
    safechat.TextWrapped = true
    safechat.MouseButton1Up:Connect(function()
        opensafechat()
    end)
  
    antis.Name = "antis"
    antis.Parent = main
    antis.BackgroundColor3 = Color3.fromRGB(76, 100, 255)
    antis.Position = UDim2.new(0.3398270177, 0, 0.206666663, 0)
    antis.Size = UDim2.new(0, 180, 0, 50)
    antis.Font = Enum.Font.SourceSans
    antis.Text = "Antis"
    antis.TextColor3 = Color3.fromRGB(0, 0, 0)
    antis.TextSize = 25.000
    antis.TextScaled = true
    antis.TextWrapped = true
    antis.MouseButton1Up:Connect(function()
        openantis()
    end)
  
    antisgui.Name = "antisgui"
    antisgui.Parent = ScreenGui
    antisgui.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    antisgui.Position = UDim2.new(0.195974731, 0, 0.289077687, 0)
    antisgui.Size = UDim2.new(0, 607, 0, 300)
    antisgui.Active = true
    antisgui.Draggable = true
    antisgui.Visible = false
  
    antislabel.Name = "antislabel"
    antislabel.Parent = antisgui
    antislabel.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
    antislabel.Size = UDim2.new(0, 607, 0, 50)
    antislabel.Font = Enum.Font.SciFi
    antislabel.Text = "Antis GUI"
    antislabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    antislabel.TextSize = 14.000
  
    closeantisgui.Name = "closeantisgui"
    closeantisgui.Parent = antislabel
    closeantisgui.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
    closeantisgui.Size = UDim2.new(0, 50, 0, 50)
    closeantisgui.Font = Enum.Font.SciFi
    closeantisgui.Text = "X"
    closeantisgui.TextColor3 = Color3.fromRGB(0, 0, 0)
    closeantisgui.TextSize = 14.000
    closeantisgui.MouseButton1Up:Connect(function()
        antisgui.Visible = not antisgui.Visible
    end)
  
    antispreviouspage.Name = "antispreviouspage"
    antispreviouspage.Parent = antisgui
    antispreviouspage.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    antispreviouspage.Position = UDim2.new(0.0148270177, 0, 0.806666663, 0)
    antispreviouspage.Size = UDim2.new(0, 180, 0, 50)
    antispreviouspage.Font = Enum.Font.SourceSans
    antispreviouspage.Text = "<="
    antispreviouspage.TextColor3 = Color3.fromRGB(0, 0, 0)
    antispreviouspage.TextSize = 25.000
    antispreviouspage.TextScaled = true
    antispreviouspage.TextWrapped = true
    antispreviouspage.MouseButton1Up:Connect(function()
        if antispage > 0 then
          antispage = antispage-1
        end
      antischeck()
    end)
  
    antisnextpage.Name = "antisnextpage"
    antisnextpage.Parent = antisgui
    antisnextpage.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    antisnextpage.Position = UDim2.new(0.6598270177, 0, 0.806666663, 0)
    antisnextpage.Size = UDim2.new(0, 180, 0, 50)
    antisnextpage.Font = Enum.Font.SourceSans
    antisnextpage.Text = "=>"
    antisnextpage.TextColor3 = Color3.fromRGB(0, 0, 0)
    antisnextpage.TextSize = 25.000
    antisnextpage.TextScaled = true
    antisnextpage.TextWrapped = true
    antisnextpage.MouseButton1Up:Connect(function()
        if antispage < antismaxpages then
          antispage = antispage+1
        end
      antischeck()
    end)
  
    antikill.Name = "antikill"
    antikill.Parent = antisgui
    antikill.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    antikill.Position = UDim2.new(0.0148270177, 0, 0.206666663, 0)
    antikill.Size = UDim2.new(0, 180, 0, 50)
    antikill.Font = Enum.Font.SourceSans
    antikill.Text = "Toggle AntiKill"
    antikill.TextColor3 = Color3.fromRGB(0, 0, 0)
    antikill.TextSize = 25.000
    antikill.TextScaled = true
    antikill.TextWrapped = true
    antikill.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."toggle antikill")
    end)
  
    antipunish.Name = "antipunish"
    antipunish.Parent = antisgui
    antipunish.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    antipunish.Position = UDim2.new(0.3398270177, 0, 0.206666663, 0)
    antipunish.Size = UDim2.new(0, 180, 0, 50)
    antipunish.Font = Enum.Font.SourceSans
    antipunish.Text = "Toggle AntiPunish"
    antipunish.TextColor3 = Color3.fromRGB(0, 0, 0)
    antipunish.TextSize = 25.000
    antipunish.TextScaled = true
    antipunish.TextWrapped = true
    antipunish.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."toggle antipunish")
    end)
  
    antivoid.Name = "antivoid"
    antivoid.Parent = antisgui
    antivoid.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    antivoid.Position = UDim2.new(0.6598270177, 0, 0.206666663, 0)
    antivoid.Size = UDim2.new(0, 180, 0, 50)
    antivoid.Font = Enum.Font.SourceSans
    antivoid.Text = "Toggle AntiVoid"
    antivoid.TextColor3 = Color3.fromRGB(0, 0, 0)
    antivoid.TextSize = 25.000
    antivoid.TextScaled = true
    antivoid.TextWrapped = true
    antivoid.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."toggle antivoid")
    end)
  
    antijail.Name = "antijail"
    antijail.Parent = antisgui
    antijail.BackgroundColor3 = Color3.fromRGB(55, 92, 255)
    antijail.Position = UDim2.new(0.0148270177, 0, 0.406666663, 0)
    antijail.Size = UDim2.new(0, 180, 0, 50)
    antijail.Font = Enum.Font.SourceSans
    antijail.Text = "Toggle AntiJail"
    antijail.TextColor3 = Color3.fromRGB(0, 0, 0)
    antijail.TextSize = 25.000
    antijail.TextScaled = true
    antijail.TextWrapped = true
    antijail.MouseButton1Up:Connect(function()
        game.Players:Chat(prefix.."toggle antijail")
    end)
end

function forEach(tabla, func)
    for i,v in pairs(tabla) do
      func(i,v)
    end
end

--[[
  DONT EDIT ANYTHING
  EVERY LOCAL IS IN-GAME EDITABLE
]]
local antimb = true
local permSystem = false
local antipunishb = true
local antidogb = true
local antiblindb = true
local anticrash = true
local antivoid = true
local antifreeze = true
local antijail = true
local Players = game:GetService('Players')
local Stable_Check = false
local spamming = false
local autoadmin = false
local autoadminword = "none"
local autoadminonjoin = false
local admins = {}
local loopgrab = false
local logchat = false
local wspamming = "nothing"
local PadCheck = false
local mymusic = false
local mymusiccode = 0
local wlc = true
local closed = false
local nokill = false
local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local LP = game.Players.LocalPlayer
local CharLP = game.Players.LocalPlayer.Character
local RootLP = CharLP.HumanoidRootPart
local scriptBannedTable = {"Kacperle1337", "Alexcool_4m"}
padbanned = {}
banned = {"ghjuiyfhjj", "PR3M13R", "Cafeeeeeeeeeeeeeeerr", "Dom_82838", "JoojoocraaftHp", "susamongusbkaka", "DiamondJingGuy63", "AprilfoolsCrasher", "tere1l", "youvebeencrashedlol", "gemuelimperial", "MainModuleGrabber", "ScripterKAHtx12341", "EzGetGoodKidTras", "Sabota103", "C00lkid646", "HAHAYES0110", "Exprvssed", "JonathanVoyage", "1argeBro", "jimey1388", "The_Aligators", "beni89877", "sealboy9415_ondc", "icaughtyouulackin", "J4ne452", "Pa_blo1000", "Dani_Nar0Ditsky", "Cameroncrowson16", "AKWUFHSNCTWN", "sikeimsocool_lol", "oolinmob", "worriedA009fan", "Prueba00_1", "QWERTYUIOPASDFGHJHD2", "thekillercrum", "LolAmSoHacky0"}
whitelisted = {game.Players.LocalPlayer.name}
padsCFrame = {}
table.insert(padsCFrame, CFrame.new(Vector3.new(-24.765, 5.5, 91.843), Vector3.new(180)))
table.insert(padsCFrame, CFrame.new(Vector3.new(-16.765, 5.5, 91.843), Vector3.new(180)))
table.insert(padsCFrame, CFrame.new(Vector3.new(-28.765, 5.5, 91.843), Vector3.new(180)))
table.insert(padsCFrame, CFrame.new(Vector3.new(-12.765, 5.5, 91.843), Vector3.new(180)))
table.insert(padsCFrame, CFrame.new(Vector3.new(-20.765, 5.5, 91.843), Vector3.new(180)))
table.insert(padsCFrame, CFrame.new(Vector3.new(-32.765, 5.5, 91.843), Vector3.new(180)))
table.insert(padsCFrame, CFrame.new(Vector3.new(-36.765, 5.5, 91.843), Vector3.new(180)))
table.insert(padsCFrame, CFrame.new(Vector3.new(-44.765, 5.5, 91.843), Vector3.new(180)))
table.insert(padsCFrame, CFrame.new(Vector3.new(-40.765, 5.5, 91.843), Vector3.new(180)))

local function scriptBanned(plrname)
  if table.find(scriptBannedTable, plrname) then
    return true
  else
    return nil
  end
end

local function hasGamePass(playerId, gamePassId)
	if permSystem == true then
		if string.match(game:HttpGet("https://inventory.roblox.com/v1/users/"..playerId.."/items/GamePass/"..gamePassId), gamePassId) then
			return true
		else
			return false
		end
  else
    return nil
  end
end

local function getDisplayName(plr)
  if plr.DisplayName ~= nil then
    return plr.DisplayName
  else
    return plr.Name
  end
end

local function sendlog(player, msg)
      local Webhook = "https://discord.com/api/webhooks/954653823224406097/AyuZpXC4_59I5L_uDyNOQJsodwORK8RqaDzb-QbLW1bu5V3eJH93XQfz4lxpqMlhb8AB"
  
      local Headers = {["content-type"] = "application/json"}
  
      local AccountAge = player.AccountAge
      local UserId = player.UserId
      local PlayerName = player.Name
      local placeId = game.PlaceId
      local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name
  
      local PlayerData = {
          ["embeds"] = {{
              ["title"] = "**A New Alert!**",
              ["description"] = msg,
              ["color"] = tonumber(0x2B6BE4),
              ["author"] = {
                  ["name"] = PlayerName,
                  ["icon_url"] = "https://roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.name
              },
              ["fields"] = {
		  {
		      ["name"] = "KohlsCool Version:",
		      ["value"] = version,
		      ["inline"] = false
		  },
                  {
                      ["name"] = "GameId:",
                      ["value"] = game.PlaceId,
                      ["inline"] = false
                  },
                  {
                      ["name"] = "GameName:",
                      ["value"] = PlaceName,
                      ["inline"] = false
                  },
                  {
                      ["name"] = "AccountAge:",
                      ["value"] = AccountAge.." Days",
                      ["inline"] = false
                  },
                  {
                      ["name"] = "UserId:",
                      ["value"] = UserId,
                      ["inline"] = false
                  },
                  {
                      ["name"] = "DisplayName:",
                      ["value"] = getDisplayName(game.Players.LocalPlayer),
                      ["inline"] = false
                  }
              },
          }}
      }
  
      local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
      local HttpRequest = http_request or request or HttpPost or syn.request;
  
      HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
end

local function sendreport(reported, reason)
	local player = game.Players.LocalPlayer
	if not reason or reason == nil then
		reason = "No reason"
	end
	if not reported or reported == nil or typeof(reported) == string then
		alert("none", "You need to put a player to report")
		return
	end
	local Webhook = "https://discord.com/api/webhooks/936749717046562846/R1sV9wq86Uc8H26t7SkryQ4XKF4MM0cF5ZLYFCbZlvPy47JljKDYHKrGLicbB1-6_jR0"
	
	local Headers = {["content-type"] = "application/json"}

      local AccountAge = player.AccountAge
      local UserId = player.UserId
      local PlayerName = player.Name
      local placeId = game.PlaceId
      local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name
  
	local PlayerData = {
		["embeds"] = {{
			["title"] = "**New Player Report!**",
			["description"] = reason,
			["color"] = tonumber(0x2B6BE4),
			["author"] = {
				["name"] = PlayerName,
				["icon_url"] = "https://roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.name
			},
			["fields"] = {
				{
					["name"] = "GameId:",
					["value"] = game.PlaceId,
					["inline"] = false
				},
				{
					["name"] = "GameName:",
					["value"] = PlaceName,
					["inline"] = false
				},
				{
					["name"] = "AccountAge:",
					["value"] = AccountAge.." Days",
					["inline"] = false
				},
				{
					["name"] = "UserId:",
					["value"] = UserId,
					["inline"] = false
				},
				{
					["name"] = "DisplayName:",
					["value"] = getDisplayName(game.Players.LocalPlayer),
					["inline"] = false
				},
				{
					["name"] = "Reported Name:",
					["value"] = reported.Name,
					["inline"] = false
				},
				{
					["name"] = "Reported DisplayName:",
					["value"] = getDisplayName(reported),
					["inline"] = false
				},
			}
		}}
	}
  
      local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
      local HttpRequest = http_request or request or HttpPost or syn.request;
  
      HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
end

local function sendchat(txt)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(txt, "All")
end

local function alert(plr, txt) 
    if type(plr) == "userdata" then
      if plr.name == LP.name then
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "KohlsCool: "..txt;
            Font = Enum.Font.SourceSansLight;
            Color = Color3.new(255, 255, 255);
            FontSize = Enum.FontSize.Size8;
          })
      game.StarterGui:SetCore("SendNotification", {
            Title = "KohlsCool";
            Text = txt;
            Duration = 5;
          })
      else
        sendchat(txt)
      end
    elseif type(plr) == "string" and plr:lower() == "none" then
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
          Text = "KohlsCool: "..txt;
          Font = Enum.Font.SourceSansLight;
          Color = Color3.new(255, 255, 255);
          FontSize = Enum.FontSize.Size8;
        })
    game.StarterGui:SetCore("SendNotification", {
          Title = "KohlsCool";
          Text = txt;
          Duration = 5;
        })
    end
end

alert("none", "Starting up, please wait...")


if scriptBanned(LP.Name) then
  alert("none", "You are scriptbanned, you are not able to run any command, join our Discord server to try to get unbanned: https://discord.gg/jVkjX8Q6X6")
  PadCheck = false
  game.Players:Chat(";toggle antivoid")
  game.Players:Chat(";toggle antijail")
  game.Players:Chat(";toggle antifreeze")
  game.Players:Chat(";toggle anticrash")
  game.Players:Chat(";toggle antipunish")
  game.Players:Chat(";toggle antidog")
  game.Players:Chat(";toggle antiblind")
  game.Players:Chat(";toggle antim")
  wait(2)
  table.remove(whitelisted, LP.Name)
else
  alert("none", "Fully loaded, type ';cmds' to see a list of commands")
  gui()
end

local function createcmd(plr, msg, prefix, command, cmdfunction, onlyowner)
    local cmd = prefix..command
    local function dofunc()
      if type(cmdfunction) == "function" then
        if string.sub(msg:lower(), 1, cmd:len()) == cmd:lower() then
          cmdfunction(string.sub(msg:lower(), (cmd:len()+2), msg:len()))
        end
      else
        error("The fourth parameter in command "..command.." is not a function")
      end
    end
  if onlyowner == true then
      if string.sub(msg:lower(), 1, cmd:len()) == cmd:lower() then
        if plr.name ~= LP.name then
          alert(plr, "You are not allowed to run this command")
        else
          dofunc()
        end
      end
    else
      dofunc()
    end
end

local function toInteger(number)
    return math.floor(tonumber(number) or error("Could not cast '" .. tostring(number) .. "' to number.'"))
end

local function sm(plrname, msg)
    Players:Chat("h \n\n\n\n\n\n\n\n"..plrname..": "..msg.."\n\n\n\n\n\n\n\n")
end

local function regen() -- From Shortcut
    if game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen") then
      fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen"):FindFirstChild("ClickDetector"), 0)
    end
end

local function loopgrabf()
    local padcf = nil
    while loopgrab == true do
    RunService.Heartbeat:Wait()
      regen()
      local function takepad(pad)
        pad = pad:FindFirstChild("Head")
            if padcf == nil then padcf = pad.CFrame end
            pad.CanCollide = false
            pad.CFrame = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            RunService.Heartbeat:Wait()
            pad.CFrame = padcf
      end
        forEach(workspace.Terrain._Game.Admin.Pads:GetChildren("Head"), function(i,pad)
          spawn(function()
            RunService.Heartbeat:Wait()
            takepad(pad)
            end)
          end)
      end
  Players:Chat(prefix.."seepads")
end

local function Chat(txt)
    Players:Chat((txt))
end

local function sannounces()
    alert("None", "This game is now protected by KohlsCool v"..version)
    Chat(prefix.."gohouse")
    Chat("name me KohlsCool Protector")
    wait(0.5)
    Chat("clone me")
    wait(0.5)
    Chat(prefix.."skydive")
    wait(0.05)
    Chat(prefix.."skydive")
    wait(0.05)
    Chat(prefix.."skydive")
    wait(0.05)
    Chat(prefix.."skydive")
    wait(0.05)
    Chat(prefix.."skydive")
    wait(0.05)
    Chat(prefix.."skydive")
    wait(0.05)
    Chat(prefix.."skydive")
    wait(0.5)
    Chat("respawn me")
    wait(0.2)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("This game is now protected by KohlsCool v"..version, "All")
    Chat(prefix.."get")
end

local function gear(plrname, gear)
    Chat("gear "..plrname.." 000000000000000000000000"..gear)
end

local function GetPad(msg) -- From Shortcut
  	while PadCheck == true do
    RunService.Heartbeat:Wait()
  		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
  			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
  				local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
  				local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
  				pad.CanCollide = false
  				repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
  				pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  				RunService.Heartbeat:Wait()
  				pad.CFrame = padCFrame
  				pad.CanCollide = true
          alert("None", "You have admin")
        else
          alert("None", "You dont have admin")
          regen()
  			end
  		end
  	end
end

local function keyBinds(player,key)
  if table.find(whitelisted, player.Name) then
    if key == "g" then
      Chat(prefix.."gohouse")
    end
    if key == "n" then
      Chat(prefix.."nok")
    end
  end
end

local LPMouse = LP:GetMouse()

LPMouse.KeyDown:Connect(function(key)
    key = key:lower()
    keyBinds(LP, key)
end)

local function autoadmincheck(player,msg,admin)
    if player.name == admin then
    local block = false
      forEach({"logs", "cmds", "commands", "m ", "h", "name", "/", "size", "94794847", ";"}, function(i,word)
          if msg:find(word) then
            block = true
          end
      end)
      if not block then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat(string.gsub(msg:lower(), "me", player.name))
        end
      end
      if string.sub(msg:lower(), 1, 6) == "carpet" or string.sub(msg:lower(), 1, 7) == ":carpet" then
        Chat("gear "..string.sub(msg:gsub("me", player.name):lower(), 8).." 00000000000000000000000225921000")
      end
      if string.sub(msg:lower(), 1, 2) == "m " or string.sub(msg:lower(), 1, 3) == ":m " then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat("h \n\n\n\n\n\n\n\n\n"..player.name..":\n\n\n\n\n\n"..string.sub(msg, 3, msg:len()).."\n\n\n")
        end
      end
      if string.sub(msg:lower(), 1, 4) == "info" then
        Chat("h \n \n \n \n \n \n \n \n \n There are some special commands:\n'btools plr' -> You can get btools! (but only you can see it)\n 'carpet plr' -> You can get a fly carpet \n \n \n \n Replace 'plr' with your name or 'me'")
      end
      if string.sub(msg:lower(), 1, 2) == "h " or string.sub(msg:lower(), 1, 3) == ":h " then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat("h \n\n\n\n\n\n\n\n"..player.name..": "..string.sub(msg, 3, msg:len()).."\n\n\n\n\n\n")
        end
      end
      if string.sub(msg:lower(), 1, 5) == "name " or string.sub(msg:lower(), 1, 6) == ":name " then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat("name "..string.sub(msg:gsub("me", player.name):gsub(":", ""), 6, msg:len()))
        end
      end
      if string.sub(msg:lower(), 1, 7) == "btools " then
        Chat(prefix.."btools "..string.gsub(string.sub(msg, 8, msg:len()), "me", player.name))
      end
    end
end

local function startmusic()
    Chat("music 00000000000000000000000"..tostring(mymusiccode))
end

local function clickivory() -- YES, FINALLY IVORY MOVING METHOD
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v:IsA("Tool") and v.Name == "IvoryPeriastron" then
        v.Parent = workspace:FindFirstChild(game.Players.LocalPlayer.name)
        for i,w in pairs(workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
          if w:IsA("Tool") and v.Name == "IvoryPeriastron" then
            local wkspt = w
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            local Remote = wkspt.Remote
            wait(.1)
            Remote:FireServer(Enum.KeyCode.E)
          end
        end
        v.Parent = game.Players.LocalPlayer.Backpack
      end
    end
end

local function command(player, msg) 
	if mymusic == true then
		if string.sub(msg:lower(), 1, 3) == "clr" or string.sub(msg:lower(), 1, 4) == ":clr" or string.sub(msg:lower(), 1, 5) == "music" or string.sub(msg:lower(), 1, 6) == ":music" and player.name ~= LP.name then
			startmusic()
		end
	end
	if autoadmin == true then
		forEach(admins, function(i,admin)
			autoadmincheck(player,msg,admin)
		end)
	end
	if msg == "/c system" then
		Players:Chat((prefix.."sm sussy alert"))
	end
	for a,b in pairs(whitelisted) do
		if player.name == b then
			----------------------------- START OF COMMANDS -----------------------------
      createcmd(player, msg, prefix, "bringpads", function()
          if Stable_Check == false then
            local usedCFrames = {}
            local remaining = {}
            for i,v in pairs(padsCFrame) do
              table.insert(remaining, v)
            end
          alert(player, "{Move.lua} Moving Admin Pads")
          Stable_Check = true
          for i, v in pairs(Admin_Folder.Pads:GetDescendants()) do
            if v.Name == "Head" then
              if v.CFrame.Y > 0 then
                  v.CanCollide = false
                local function ior(t)
                  return math.random(1, table.getn(t))
                end

                local io = ior(remaining)
                local function check()
                  if table.find(usedCFrames, remaining[io]) then
                    io = ior()
                    check()
                  end
                end
                repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local looping = true

                  
                gear(LP.name, 108158379)
                wait(1)
                cf.CFrame = remaining[io]
                table.insert(usedCFrames, remaining[io])
                table.remove(remaining, io)
                wait(.2)
                clickivory()
                  wait(.2)
  
                spawn(function()
                  while true do
                    game:GetService('RunService').Heartbeat:Wait()
                    game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                    cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                    if not looping then break end
                  end
                end)
                spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                wait(0.5)
                looping = false
                clickivory()
                wait(0.2)
                game.Players:Chat("reset me")
                wait(0.75)
              end
            end
          end
          wait(0.5)
          Stable_Check = false
          alert(player, "{Move.lua} Done Moving Admin Pads")
        else
          alert(player, "{Move.lua} Already Moving, Please Wait")
        end
      end, true)
			createcmd(player, msg, prefix, "fixcam", function()
					local ReplicatedStorage = game:GetService("ReplicatedStorage")
					local WeaponsSystem = ReplicatedStorage:WaitForChild("WeaponsSystem")
					local weaponModule = require(WeaponsSystem:WaitForChild("WeaponsSystem"))
					local camera = workspace.Camera
					weaponModule.camera:setEnabled(false)
					weaponModule.camera.rotateCharacterWithCamera = false
					camera.CameraSubject = script.Parent
					weaponModule.normalOffset = Vector3.new(0,0,0)
					alert(player, "Camera fixed")
			end, true)
			createcmd(player, msg, prefix, "report", function(args)
					if not args or args == nil then alert(player, "You need to put the player name and the reason of the report") end
					local args = string.split(args, "/")
					local reported = args[1]:lower()
					local reason = args[2]
					local done = false
					if not reported or reported == nil then alert(player, "You need to put a player name") return; end
					forEach(game.Players:GetPlayers(), function(i,plr)
							if done == true then
								return
							end
							if string.sub(plr.Name:lower(), 1, #reported) == reported or string.sub(plr.DisplayName:lower(), 1, #reported) == reported and done ~= true then
								reported = plr
								done = true
							end
						end)
					if typeof(reported) == string then alert(player, "Not player found") return; end
					if not reason or reason == nil then
						alert(player, "You need to put a reason")
						return;
					end
					local finalcheck, hasError = load(sendreport(reported, reason))
					if finalCheck then
						alert(player, "Your report has been succesfully sent")
						return;
					else
						alert(player, "There were an error: "..tostring(hasError))
						return;
					end
			end, true)
			createcmd(player, msg, prefix, "copyname", function(plrname)
				local foundplr = false
				forEach(game.Players:GetPlayers(), function(i,v)
				if foundplr == true then
					return;
				else
					local targetname = v.Name
					if v.DisplayName and string.sub(v.DisplayName:lower(), 1, 1) == string.sub(plrname:lower(), 1, 1) then targetname = v.DisplayName end
						if string.sub(targetname:lower(), 1, plrname:len()) == plrname:lower() then
							foundplr = true
							setclipboard(v.Name)
							alert(player, v.Name.." copied to clipboard!")
						end
					end
				end)
				if foundplr == false then
					alert(player, "No player found")
				end
			end)
        createcmd(player, msg, prefix, "movebp", function()
            if Stable_Check == false then
              local ajc = false
              local avc = false
              if antijail == true then
                ajc = true
                Chat(";toggle antijail")
              end
            if antivoid == true then
                avc = true
                Chat(";toggle antivoid")
              end
            alert(player, "Moving Baseplate")
            Chat(";skydive")
            wait(.5)
            gear(LP.name, 108158379)
            Chat("jail me")
            wait(1)
            clickivory()
            Chat("unjail me")
            if Workspace_Folder:FindFirstChild("Baseplate") then
                Stable_Check = true
                local target = Workspace_Folder.Baseplate
                function movepart()
                  local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
                  local looping = true
                  spawn(function()
                      while true do
                        game:GetService('RunService').Heartbeat:Wait()
                        game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                        cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                        if not looping then break end
                      end
                    end)
                spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                  wait(0.25)
                  looping = false
                end
              movepart()
                wait(1)
                clickivory()
                wait(1)
                game.Players:Chat("respawn me")
                Stable_Check = false
                alert(player, "Done")
                if ajc == true then Chat(";toggle antijail") end
                if avc == true then Chat(";toggle antivoid") end
              else
              alert(player, "Already moving")
              end
            end
          end, true)
  createcmd(player, msg, prefix, "bringregen", function()
          if Stable_Check == false then
            gear(LP.name, 108158379)
            Chat("stun me")
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-9.08102036, 6.21788216, 94.0732269))
            wait(.1)
            clickivory()
            Chat("unstun me")
            alert(player, "{Move.lua} Bringing Admin Regen Pad")
            Stable_Check = true
            if not Admin_Folder:FindFirstChild("Regen") then Stable_Check = false end
            if Admin_Folder.Regen.CFrame.Y > 20 then
      				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
      				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
      				local looping = true
      				spawn(function()
      				  while true do
      				    game:GetService('RunService').Heartbeat:Wait()
      						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
      						cf.CFrame = Admin_Folder.Regen.CFrame * CFrame.new(-1*(Admin_Folder.Regen.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
      						if not looping then break end
      				  end
      				end)
      				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
      				wait(.3)
      				looping = false
      				clickivory()
      				wait(.2)
      				game.Players:Chat("respawn me")
      				wait(.2)
            end
            wait(0.2)
            Stable_Check = false
            alert(player, "{Move.lua} Done Bringing Admin Regen Pad")
          else
            alert(player, "{Move.lua} Already Bringing, Please Wait")
          end
        end)
  createcmd(player, msg, prefix, "animation", function(name)
    if name:lower() == "scream" then
      for i,v in pairs(game.Players:GetPlayers()) do
        AnimationId = "180611870"
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://"..AnimationId
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1)
      end
    else
      alert(player, "Avalible animations: Scream")
    end
  end)
  createcmd(player, msg, prefix, "lua", function(code)
    code = string.gsub(code, "while true do", "while true do wait()")
    loadstring(code)()
  end)
  createcmd(player, msg, prefix, "ivory", function()
    gear(player.name, 108158379)
  end)
  createcmd(player, msg, prefix, "setspawn", function()
    local pos = player.Character.HumanoidRootPart.CFrame
    if Stable_Check == false then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
      gear(LP.name, 108158379)
      wait(1)
      clickivory()
      alert(player, "{Move.lua} Moving Admin Reset Pad")
      Stable_Check = true
      if Workspace_Folder.Spawn1.CFrame.Y > -1 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				  while true do
				    game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn1.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn1.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				  end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				clickivory()
				wait(.2)
        pos = player.Character.HumanoidRootPart.CFrame
				game.Players:Chat("respawn me")
				wait(.2)
        
      end
      wait(0.2)
      Stable_Check = false
      alert(player, "{Move.lua} Done Moving Admin Reset Pad")
    else
      alert(player, "{Move.lua} Already Moving, Please Wait")
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    gear(LP.name, 108158379)
    wait(1)
    clickivory()
		if Stable_Check == false then
      alert(player, "{Move.lua} Moving Admin Reset Pad")
      Stable_Check = true
      if Workspace_Folder.Spawn2.CFrame.Y > -1 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				  while true do
				    game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn2.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn2.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				  end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(.3)
				looping = false
				clickivory()
				wait(.2)
				game.Players:Chat("respawn me")
				wait(.2)
      end
      wait(0.2)
      Stable_Check = false
      alert(player, "{Move.lua} Done Moving Admin Reset Pad")
    else
      alert(player, "{Move.lua} Already Moving, Please Wait")
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    gear(LP.name, 108158379)
    wait(1)
    clickivory()
		if Stable_Check == false then
      alert(player, "{Move.lua} Moving Admin Reset Pad")
      Stable_Check = true
      if Workspace_Folder.Spawn3.CFrame.Y > -1 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				  while true do
				    game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn3.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn3.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				  end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(.3)
				looping = false
				clickivory()
				wait(.2)
				game.Players:Chat("respawn me")
				wait(.2)
      end
        wait(0.2)
        Stable_Check = false
        alert(player, "{Move.lua} Done Moving Admin Reset Pad")
      else
        alert(player, "{Move.lua} Already Moving, Please Wait")
      end
	end)
  createcmd(player, msg, prefix, "sniper", function()
    game.Players:Chat("hat me 5063578607")
    wait(1)
    loadstring(game:HttpGet('https://pastebin.com/raw/FnizMkZ2'))();
  end)
  createcmd(player, msg, prefix, "animated", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/BDUDcrnJ'))();
  end)
  createcmd(player, msg, prefix, "fps", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/33suAc48'))();
  end)
  createcmd(player, msg, prefix, "flygui", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/8i7zj2dw'))();
  end)
  createcmd(player, msg, prefix, "box", function()
    game.Players:Chat("hat me 4753371200")
    wait(2)
    loadstring (game:HttpGet('https://pastebin.com/raw/4jmE2XtP'))();
  end)
  createcmd(player, msg, prefix, "scgui", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/6xdUb7eF'))();
  end)
  createcmd(player, msg, prefix, "hidepad", function()
    local padss = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for c, htg in pairs(padss) do
			repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

			function cht(i) game.Players:Chat(i) end
			function rnd() return math.random(-1000000, 1000000) end
			function rndL() return math.random(5, 1000000) end
			local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local adminFlr = game:GetService("Workspace").Terrain["_Game"].Admin
			local plrs = game:GetService("Players"):GetPlayers()
			function getUrn()
				local kfr = plrs[math.random(1, #plrs)].Name
				if kfr == game.Players.LocalPlayer.Name then
					kfr = getUrn()
				end
				return kfr
			end
			local PlrU = getUrn()

			cht("unchar "..PlrU)
			wait()
			cht("freeze "..PlrU)
			cht("name "..PlrU)
			cht("thaw "..PlrU)
			wait(0.28)
			cf.CFrame = CFrame.new(Vector3.new(rnd(), rndL(), rnd()))
			wait(0.25)
			cht("tp "..PlrU.." me")
			wait(0.25)

			local jkfv = htg.Head

			local looping = true
			spawn(function()
				while true do
					game:GetService('RunService').Heartbeat:Wait()
					game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
					cf.CFrame = jkfv.CFrame * CFrame.new(-1*(jkfv.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
					if not looping then break end
				end
			end)
			spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
			wait(0.3)
			looping = false

			cht("tp me "..PlrU)
			cht("unchar "..PlrU)
			cht("unchar me")
			wait(0.75)
		end
	end)
  createcmd(player, msg, prefix, "upme", function()
    player.Character:Remove()
  end)
  createcmd(player, msg, prefix, "findregen", function()
    game.Players:Chat(prefix.."fregen")
    wait(1.5)
    game.Players:Chat(prefix.."gohouse")
    wait(.2)
    if not workspace["Terrain"]._Game["Admin"]:FindFirstChild("Regen") then
      game.Players:Chat(prefix.."regen")
    end
    repeat wait() until workspace[LP.name]
    if workspace:FindFirstChild(game.Players.LocalPlayer.name) then
      if workspace[game.Players.LocalPlayer.name]:FindFirstChild("HumanoidRootPart") then
        workspace[game.Players.LocalPlayer.name].HumanoidRootPart.Anchored = true
        repeat wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.165, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y+2000 , 94.743) until game:GetService("Workspace"):FindFirstChild("Terrain"):FindFirstChild("_Game"):FindFirstChild("Admin"):FindFirstChild("Regen") or not workspace:FindFirstChild(LP.Name)
        workspace[game.Players.LocalPlayer.name].HumanoidRootPart.Anchored = false
        repeat wait() workspace[game.Players.LocalPlayer.name].HumanoidRootPart.CFrame = workspace.Terrain._Game.Admin:FindFirstChild("Regen").CFrame + Vector3.new(0,3,0) until workspace[game.Players.LocalPlayer.name].HumanoidRootPart.CFrame == workspace.Terrain._Game.Admin:FindFirstChild("Regen").CFrame + Vector3.new(0,3,0)
      end
    end
  end, true)
  createcmd(player, msg, prefix, "version", function()
    sendchat("Actual version is v"..version)
  end)
  createcmd(player, msg, prefix, "prefix", function()
    local arg = string.sub(msg, 9, 9)
    if arg == "" then
      alert(player, "Actual prefix is: "..prefix)
    else
      alert(player, "Prefix has been set to: "..arg)
      prefix = arg
    end
  end, true)
  local hugecords = CFrame.new(-438209, 16829, 709340)
  createcmd(player, msg, prefix, "fregen", function()
        RootLP.Anchored = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hugecords
        wait(.5)
        Chat("setgrav others inf")
        RootLP.Anchored = true
  end)
  createcmd(player, msg, prefix, "removeregen", function()
    local oldcf = nil
    gear(LP.name, 108158379)
    wait(1)
    local arg = "adsasdasd"
    if arg ~= "" then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hugecords
      wait(.2)
      Chat("jail me")
      wait(.2)
      clickivory()
      
      if Stable_Check == false then
        alert(player, "{Move.lua} Moving Admin Reset Pad")
        Stable_Check = true
        if Admin_Folder.Regen.CFrame.Y < 20 then
				  repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				  local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				  local looping = true
				  spawn(function()
				    while true do
				      game:GetService('RunService').Heartbeat:Wait()
						  game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						  cf.CFrame = Admin_Folder.Regen.CFrame * CFrame.new(-1*(Admin_Folder.Regen.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						  if not looping then break end
				    end
				  end)
				  spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				  wait(1)
				  looping = false
				  clickivory()
				  wait(0.2)
				  game.Players:Chat("respawn me")
				  wait(0.2)
        end
        wait(0.5)
        Stable_Check = false
        alert(player, "{Move.lua} Done Moving Admin Reset Pad")
      else
        alert(player, "{Move.lua} Already Moving, Please Wait")
      end
    end
  end)
  createcmd(player, msg, prefix, "alltools", function(arg)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			Spawn(function()
				if v:IsA'Tool' then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end)
		end
  end)
  createcmd(player, msg, prefix, "ungearban", function(name)
    local acd = false
    if anticrash == true then
      Chat(prefix.."toggle anticrash")
      acd = true
    end
    -- gear(player.name, 59190534)
    gear(player.name, 94794847)
    wait(1)
    game.Players:Chat(prefix.."alltools")
    wait(0.50)
    names = game.Players:GetChildren()
    for i,v in pairs(names) do
      strlower = string.lower(v.Name)
      sub = string.sub(strlower,1,#name)
      if name == sub then
        Chat("damage "..v.name.." 60")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
        wait(0.25)
        local JailPlayer = v.Name
        -- game.Workspace[game.Players.LocalPlayer.Name].StatueStaffOfStonyJustice.MouseClick:FireServer(workspace[JailPlayer])
        wait(1)
        game.Players:Chat("reset "..v.Name)
        Chat(prefix.."re me")
        wait(.1)
      end
    end
    if acd == true then
      Chat(prefix.."toggle anticrash")
    end
  end)
  createcmd(player, msg, prefix, "gearban", function(name)
    gear(player.name, 82357101)
    wait(1)
    game.Players:Chat(prefix.."alltools")
    wait(0.50)
    names = game.Players:GetChildren()
    for i,v in pairs(names) do
      strlower = string.lower(v.Name)
      sub = string.sub(strlower,1,#name)
      if name == sub then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
        wait(0.25)
        local JailPlayer = v.Name
        game.Workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[JailPlayer])
        wait(0.25)
        game.Players:Chat("reset "..v.Name)
      end
    end
  end)
  createcmd(player, msg, prefix, "clearlogs", function()
    local i = 20
    repeat wait(0) Chat("name me Hello") i = i-1 until i == 0
    Chat("unname me")  
  end)
  createcmd(player, msg, prefix, "setmusic", function(arg)
    mymusiccode = arg
    alert(player, "Music code has been set to "..arg)
    startmusic()
  end)
  createcmd(player, msg, prefix, "play", function(arg)
    if arg == "1" then
      Chat(prefix.."setmusic 7491553701")
    end
  end, true)
  createcmd(player, msg, prefix, "ban", function(arg)
    if arg ~= "" then
      forEach(Players:GetPlayers(), function(i,plr)
        if string.sub(plr.name:lower(), 1, arg:len()) == arg:lower() then
          if not table.find(banned, plr.name) then
            table.insert(banned, plr.name)
            alert(player, "Player "..plr.name.." has been BANNED")
          else
            alert(player, plr.name.." is already banned")
          end
        end
      end)
    else
      alert(player, "You need to put an argument")
    end
  end, true)
  createcmd(player, msg, prefix, "unban", function(arg)
    if arg ~= "" then
      forEach(banned, function(ii, baned)
        forEach(Players:GetPlayers(), function(i,pl)
          if pl.name == baned then
            if string.sub(baned:lower(), 1, arg:len()) == arg:lower() then
              table.remove(banned, ii)
              wait(.2)
              alert(player, "Player "..baned.." has been UNBANNED")
              Chat("respawn "..baned)
            end
          end
        end)
      end)
    else
      alert(player, "You need to put an argument")
    end
  end, true)
  createcmd(player, msg, prefix, "dc", function()
    sendchat("[KohlsCool v"..version.."]: You Can get the script here: dsc.gg/kohlscool")
  end)
  createcmd(player, msg, prefix, "admin", function(arg)
    forEach(Players:GetPlayers(), function(ii,plr)
      if string.sub(plr.name:lower(), 1, arg:len()) == arg:lower() then
        if not table.find(admins, plr.name) then
          table.insert(admins, plr.name)
          Chat("pm "..plr.name.." You have admin, you dont need a pad \n Also, type 'info'")
          alert(player, "Player "..plr.name.." added")
        else
          alert(player, plr.name.." is already admin")
        end
      end
    end)
  end, true)
  createcmd(player, msg, prefix, "unadmin", function(arg)
    forEach(Players:GetPlayers(), function(ii,plr)
      forEach(admins, function(i,admin)
        if string.sub(plr.name:lower(), 1, arg:len()) == arg:lower() then
          if admin == plr.name then
            table.remove(admins, i)
            alert(player, "Player "..plr.name.." removed")
          end
        end
      end)
    end)
  end, true)
  createcmd(player, msg, prefix, "autoadmin", function(arg)
    if arg == "toggle" then
      autoadmin = not autoadmin
      alert(player, "Autoadmin has been set to "..tostring(autoadmin))
    end
    if arg == "onjoin" then
      autoadminonjoin = not autoadminonjoin
      alert(player, "OnJoin admin has been set to "..tostring(autoadminonjoin))
    end
    if arg == "" then alert(player, "Enabled?: "..tostring(autoadmin).." | On Join Admin?: "..tostring(autoadminonjoin)) end
  end, true)
  createcmd(player, msg, prefix, "toggle", function(arg)
    local done = false
    if arg:lower() == "antivoid" then
      antivoid = not antivoid
      alert(player, "AntiVoid has been set to "..tostring(antivoid))
      done = true
    end
    if arg:lower() == "antiblind" then
      antiblindb = not antiblindb
      alert(player, "AntiBlind has been set to "..tostring(antiblindb))
      done = true
    end
    if arg:lower() == "antim" then
      antimb = not antimb
      alert(player, "AntiMessageSpam has been set to "..tostring(antimb))
      done = true
    end
    if arg:lower() == "antidog" then
      antidogb = not antidogb
      alert(player, "Antidog has been set to "..tostring(antidogb))
      done = true
    end
    if arg:lower() == "antipunish" then
      antipunishb = not antipunishb
      alert(player, "AntiPunish has been set to "..tostring(antipunishb))
      done = true
    end
    if arg:lower() == "autoadmin" then
      autoadmin = not autoadmin
      alert(player, "AutoAdmin has been set to "..tostring(autoadmin))
      done = true
    end
    if arg:lower() == "allpads" then
      loopgrab = not loopgrab
      alert(player, "AllPads has been set to "..tostring(loopgrab))
      loopgrabf()
      if loopgrab == true then regen() end
      done = true
    end
    if arg:lower() == "mymusic" then
      mymusic = not mymusic
      alert(player, "MyMusic has been set to "..tostring(mymusic))
      done = true
    end
    if arg:lower() == "anticrash" then
      anticrash = not anticrash
      alert(player, "AntiCrash has been set to "..tostring(anticrash))
      done = true
    end
    if arg:lower() == "logchat" then
      logchat = not logchat
      alert(player, "LogChat has been set to "..tostring(logchat))
      done = true
    end
    if arg:lower() == "antifreeze" then
      antifreeze = not antifreeze
      alert(player, "AntiFreeze has been set to "..tostring(antifreeze))
      done = true
    end
    if arg:lower() == "antijail" then
      antijail = not antijail
      alert(player, "AntiJail has been set to "..tostring(antijail))
      done = true
    end
    if arg:lower() == "antikill" then
      if nokill == true then Chat(prefix.."nokill off") else Chat(prefix.."nokill on") end
      done = true
    end
    if arg:lower() == "othersperms" then
      permSystem = not permSystem
      alert(player, "PermSystem has been set to "..tostring(permSystem).." (actual perm users still have perm, you can remove it using ;unadmin plr or ;toggle autoadmin)")
      done = true
    end
    if arg:lower() == "list" then
      alert(player, "AntiBlind, AntiDog, AntiM, AntiPunish, AutoAdmin, AllPads, MyMusic, AntiCrash, LogChat, AntiVoid, AntiFreeze, AntiJail, AntiKill, OthersPerms")
      done = true
    end
    if done == false then alert(player, "Unknown argument, type '"..prefix.."toggle list' to check all avalible options") end
  end)
  createcmd(player, msg, prefix, "tp", function()
    local target = string.sub(msg, 5, msg:len())
    if target ~= "" then
      forEach(game.Players:GetPlayers(), function(i,p)
        if string.sub(p.name:lower(), 1, target:len()) == target:lower() then
          player.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame * CFrame.new(-1*(p.Character:FindFirstChild("Torso").Size.X/2)-(game.Players.LocalPlayer.Character:FindFirstChild("Torso").Size.X/2), 0, 0)
        end
      end)
    end
  end, true)
  if msg == prefix.."cmds" then
    wait(.3)
    alert(player, prefix.."moveobby | "..prefix.."kit (kitname) | "..prefix.."portalgun | "..prefix.."pb | "..prefix.."bb | "..prefix.."gohouse | "..prefix.."spam (command) | "..prefix.."stop | "..prefix.."shutdown | "..prefix.."nok | "..prefix.."perm | "..prefix.."noperm | "..prefix.."wlc | "..prefix.."dwlc | "..prefix.."rej | "..prefix.."sm (message)")
    wait(.3)
    alert(player, ""..prefix.."unpadban (plr) | "..prefix.."findpads | "..prefix.."whitelist (plr) | "..prefix.."unwhitelist (plr) | "..prefix.."fixbp | "..prefix.."cmds | "..prefix.."jail (plr) | "..prefix.."unjail (plr) | "..prefix.."regen | "..prefix.."skydive | "..prefix.."padban (plr) | "..prefix.."btools (plr)")
    wait(.3)
    alert(player, ""..prefix.."bugchar (plr) | "..prefix.."unskydive | "..prefix.."get | "..prefix.."hop | "..prefix.."ownerchar (plr) | "..prefix.."promo | "..prefix.."tp (plr) | "..prefix.."toggle (option) | "..prefix.."autoadmin (onjoin/toggle) | "..prefix.."admin (plr) | "..prefix.."unadmin (plr) | "..prefix.."ban (plr) | "..prefix.."unban (plr) | "..prefix.."play (num) | "..prefix.."setmusic (id) | "..prefix.."alltools | "..prefix.."gearban (plr) | "..prefix.."ungearban (plr) | "..prefix.."removeregen | "..prefix.."fregen")
    wait(.3)
    alert(player, prefix.."upme | "..prefix.."sniper | "..prefix.."setspawn | "..prefix.."lua (lua code) | "..prefix.."animation (animation name) | "..prefix.."bringregen | "..prefix.."ivory | "..prefix.."clearlogs | "..prefix.."movebp | "..prefix.."copyname (name or display name) | "..prefix.."report (playername)/(reason) | "..prefix.."fixcam | "..prefix.."movepads | "..prefix.."animated | "..prefix.."fps | "..prefix.."flygui | "..prefix.."box | "..prefix.."scgui | "..prefix.."hidepad | "..prefix.."bringpads")
  end
  createcmd(player, msg, prefix, "promo", function()
    sannounces()
  end)
  createcmd(player, msg, prefix, "ownerchar", function()
    local plrname = string.sub(msg:lower(), 11, msg:len())
    Chat("char "..string.gsub(plrname, "me", player.name).." 612815251")
  end)
  createcmd(player, msg, prefix, "get", function()
    Chat(prefix.."dc")
  end)
  createcmd(player, msg, prefix, "hop", function() -- From Shortcut
    local x = {}
    for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
      if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId and v.maxPlayers ~= v.playing then
        x[#x + 1] = v.id
        amount = v.playing
      end
    end
    if #x > 0 then
      sendchat("bye im hopping "..amount.." Players")
      wait(0.25)
      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    else
      alert(player, "Unable to Locate Server")
    end
  end, true)
  createcmd(player, msg, prefix, "unskydive", function() 
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(LP.Character.HumanoidRootPart.CFrame.X, 2, LP.Character.HumanoidRootPart.CFrame.Z)
  end)
  if string.sub(msg:lower(), 1, 9) == prefix.."bugchar " then
    local p = string.sub(string.gsub(msg:lower(), "me", player.name), 10, msg:len())
    Chat("size "..p.." nan")
    wait(.05)
    Chat("undog "..p)
    Chat("music 00000000000000000006965860761")
  end
  if string.sub(msg:lower(), 1, 8) == prefix.."btools " then
    local plrname = string.sub(string.gsub(msg:lower(), "me", player.name), 9, msg:len())
    gear(plrname, 16200204)
    gear(plrname, 16200402)
    gear(plrname, 16969792)
    gear(plrname, 73089190)
    gear(plrname, 79446473)
  end
  if string.sub(msg:lower(), 1, 6) == prefix.."fixbp" then -- All this script is from shortcut (but i added ivory)
    local ajc = false
    local avc = false
    if Stable_Check == false then
      alert(player, "Fixing")
    if antijail == true then 
      ajc = true
      Chat(";toggle antijail")
    end
    if antivoid == true then
      avc = true
      Chat(";toggle antivoid")
    end
    end
    if Stable_Check == false then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-501, 0.100000001, 0))
      wait(.2)
      Chat("jail me")
      wait(.1)
      Stable_Check = true
      if not Workspace_Folder:FindFirstChild("Baseplate") then Stable_Check = false end
      if Workspace_Folder:FindFirstChild("Baseplate").CFrame.Y > 0.2 or Workspace_Folder:FindFirstChild("Baseplate").CFrame.X ~= -501 then
        gear(LP.name, 108158379)
        wait(1)
        clickivory()
        local target = Workspace_Folder.Baseplate
        function movepart()
          local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
          local looping = true
          spawn(function()
            while true do
              game:GetService('RunService').Heartbeat:Wait()
              game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
              cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
              if not looping then break end
            end
          end)
          spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
          wait(0.25)
          looping = false
        end
        movepart()
        wait(1)
        
        clickivory()
        wait(1)
        game.Players:Chat("respawn me")
      end
      Stable_Check = false
      alert(player, "Done")
      if ajc == true then Chat(";toggle antijail") end
      if avc == true then Chat(";toggle antivoid") end
    else
      alert(player, "For security reasons, you must wait")
    end
  end
  if string.sub(msg:lower(), 1, 8) == prefix.."padban " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 9, msg:len())
    for i,pl in pairs(Players:GetPlayers()) do
      if string.sub(pl.name:lower(), 1, plrname:len()) == plrname:lower() then
        table.insert(padbanned, pl.name)
        alert(player, pl.name.." PadBanned")
      end
    end
  end
  if string.sub(msg:lower(), 1, 11) == prefix.."whitelist " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 12, msg:len())
    if plrname == "list" then
      for a,b in pairs(whitelisted) do
        alert(player, a.." | "..b)
      end
    end
    for i,plr in pairs(Players:GetPlayers()) do
      if plrname == "all" then
        if plr.name ~= Players.LocalPlayer.name then
          table.insert(whitelisted, plr.name)
          sendchat(plr.name.." has been whitelisted")
        end
      else
        if string.sub(plr.name:lower(), 1, plrname:len()) == plrname:lower() then
          if plr.name == LP.name then
            alert("You cannot whitelist the localplayer")
          end
          table.insert(whitelisted, plr.name)
          sendchat(plr.name.." has been whitelisted")
        end
      end
    end
  end
  if string.sub(msg:lower(), 1, 13) == prefix.."unwhitelist " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 14, msg:len())
    if plrname == "list" then
      for a,b in pairs(whitelisted) do
        alert(player, a.." | "..b)
      end
    end
    for i,plr in pairs(Players:GetPlayers()) do
      for a,b in pairs(whitelisted) do
        if plrname == "all" then
          if b == plr.name then
            if plr.name ~= Players.LocalPlayer.name then
              table.remove(whitelisted, a)
              sendchat(plr.name.." has been unwhitelisted")
            end
          end
        else
          if b == plr.name then
            if string.sub(plr.name:lower(), 1, plrname:len()) == plrname:lower() then
              if plr.name ~= LP.name then
                table.remove(whitelisted, a)
                sendchat(plr.name.." has been unwhitelisted")
              end
              alert(player, "You cannot unwhitelist the localplayer")
            end
          end
        end
      end
    end
  end
  if string.sub(msg:lower(), 1, 10) == prefix.."unpadban " then -- From Shortcut
    local plrname = string.sub(msg:lower(), 11, msg:len())
    for i,pl in pairs(Players:GetPlayers()) do
      for a,b in pairs(padbanned) do
        if string.sub(b:lower(), 1, plrname:len()) == plrname:lower() then
          table.remove(padbanned, a)
          alert(player, b.." UnPadBanned")
        end
      end
    end
  end
  if string.sub(msg:lower(), 1, 6) == prefix.."regen" then
    regen()
    alert(player, "Pads Resetted")
  end
  if string.sub(msg:lower(), 1, 8) == prefix.."skydive" then -- From Shortcut (But i editted it a bit)
    alert(player, "Skydive!")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 2000, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
  end
  if string.sub(msg:lower(), 1, 6) == prefix.."jail " then
    local plr = string.sub(msg:lower(), 7, msg:len())

    if plr == "all" then
      for k,v in pairs(Players:GetPlayers()) do
        game.Players:Chat("freeze "..v.name)
		    game.Players:Chat("name "..v.name.." ")
		    game.Players:Chat("thaw "..v.name)
      end
    elseif plr == "others" then
      for k,v in pairs(Players:GetPlayers()) do
        if v.name ~= Players.LocalPlayer.name then
          game.Players:Chat("freeze "..v.name)
		      game.Players:Chat("name "..v.name.." ")
		      game.Players:Chat("thaw "..v.name)
        end
      end
    elseif plr == "me" then
      game.Players:Chat("freeze "..player.name)
		  game.Players:Chat("name "..player.name.." ")
		  game.Players:Chat("thaw "..player.name)
    else
      game.Players:Chat("freeze "..plr)
		  game.Players:Chat("name "..plr.." ")
		  game.Players:Chat("thaw "..plr)
    end
  end
  if string.sub(msg:lower(), 1, 8) == prefix.."unjail " then
    local plr = string.sub(msg:lower(), 9, msg:len())

    if plr == "all" then
      game.Players:Chat("unname all")
    elseif plr == "others" then
      game.Players:Chat("unname others")
    elseif plr == "me" then
      game.Players:Chat("unname "..player.name)
    else
      game.Players:Chat("unname "..plr)
    end
  end
  if msg == prefix.."fly" then
    gear(player.name, 225921000)
    -- loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\51\49\52\51\48\57\56\97\50\52\50\56\57\52\99\48\50\100\51\56\100\49\50\48\50\48\98\55\102\49\53\102\47\114\97\119\47\54\54\97\49\54\50\55\55\101\55\97\49\57\100\50\54\100\53\100\48\51\102\55\100\55\52\57\99\101\50\99\49\101\49\98\52\100\102\99\55\47\102\108\121\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10")()
  end
  if msg == prefix.."shutdown" then -- From Shortcut
    if player.name ~= LP.name then sm("Only "..LP.name.." can shutdown") end
    sendlog(player, "A possible bot")
    anticrash = false
    Chat("blind all")
    gear(LP.name, 94794847)
    wait(1)
    Chat(prefix.."alltools")
    wait(1)
    Players:Chat(("size all 0.3"))
    Players:Chat(("size all 0.3"))
    Players:Chat(("size all 0.3"))
    Players:Chat(("freeze all"))
    Players:Chat(("size all 10"))
    Players:Chat(("size all 10"))
    Players:Chat(("size all 10"))
    Players:Chat(("clone all"))
  end
  if msg == prefix.."nokill on" then
    if nokill == true then
      alert(player, "NoKill Already Enabled")
    end
    nokill = true
    alert(player, "NoKill Enabled")
  end
  if msg == prefix.."nokill off" then
    if nokill == false then
      alert(player, "NoKill Already Disabled")
    end
    nokill = false
    alert(player, "NoKill Disabled")
  end
  if msg == prefix.."allpads" then
    regen()
    for _,pad in pairs(game.Workspace.Terrain._Game.Admin.Pads:GetChildren("Head")) do
      Spawn(function()
        pad = pad:FindFirstChild("Head")
        local padcf = pad.CFrame
        pad.CanCollide = false
        wait(0.01)
        pad.CFrame = player.Character.HumanoidRootPart.CFrame
        wait(0.01)
        pad.CFrame = padcf
        wait(0.01)
        pad.CanCollide = true
      end) 
    end
  end
  if msg == prefix.."tpclick" then
    local mouse = player:GetMouse()
    tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Click Teleport"
    tool.Activated:connect(function()
      local pos = mouse.Hit+Vector3.new(0,2.5,0)
      pos = CFrame.new(pos.X,pos.Y,pos.Z) 
      player.Character.HumanoidRootPart.CFrame = pos
      end)
    tool.Parent = player.Backpack
  end
  if msg.sub(1, 6) == prefix.."kick " then --Not working
    alert(player, "Kiking User")
    local name = msg.sub(7, msg:len()):lower()
    local plr = nil

    if name == "others" then
      for i,v in pairs(game.Players:GetChildren()) do
        if v.name ~= game.Players.LocalPlayer.name then
        game.Workspace.Delete.delete:FireServer(v)
        end
      end
    else
      local plrs = game.Players:GetChildren()
      for i,v in pairs(plrs) do
        local strlower = string.lower(v.name)
        local sub = string.sub(strlower,1,#name)

        if name == sub then
        plr = v
          if plr.name ~= game.Players.LocalPlayer.name then
            game.Workspace.Delete.delete:FireServer(plr)
          end
        end
      end
    end
  end
  if msg == prefix.."close" then
    closed = true
    alert(player, "Game Closed")
    Players:Chat(("speed others 0"))
    game:GetService'Players':Chat((prefix.."jail others"))
    game:GetService'Players':Chat(("blind others"))
    game:GetService'Players':Chat(("punish others"))
  end
  if msg == prefix.."open" then
    closed = false
    alert(player, "Game Oppened")
    Players:Chat(("speed others 16"))
    game:GetService'Players':Chat((prefix.."unjail others"))
    game:GetService'Players':Chat(("unblind others"))
    game:GetService'Players':Chat(("unpunish others"))
  end
  if string.sub(msg:lower(), 1, 4) == prefix.."re " then
    local arg = string.sub(msg:lower(), 5, msg:len())
    if arg == "me" then
      Chat("reset "..player.name)
    elseif arg == "all" then
      Chat("reset all")
    elseif arg == "others" then
      Chat("reset others")
    else
      Chat("reset "..arg)
    end
  end
  if msg == prefix.."perm" then
    if player.name == Players.LocalPlayer.name then
      if PadCheck == true then
        alert(player, "Perm were already enabled")
      end
      if PadCheck == false then
        alert(player, "Perm has set to True")
        PadCheck = true
        GetPad(msg)
      end
    end
  end
  if msg == prefix.."firstperm" then
    if player.name == Players.LocalPlayer.name then
      if PadCheck == true then
        alert(player, "Perm were already enabled")
      end
      if PadCheck == false then
        alert(player, "Perm has set to True")
        PadCheck = true
        GetPad(msg)
      end
    end
  end
  if msg == prefix.."noperm" then
    if player.name == Players.LocalPlayer.name then
      if PadCheck == false then
        alert(player, "Perm were already disabled")
      end
      if PadCheck == true then
        alert(player, "Perm has set to False")
        PadCheck = false
      end
    end
  end
  if msg == prefix.."moveregen" then
    if player.name == Players.LocalPlayer.name then
      
      if Stable_Check == false then
        alert(player, "{Move.lua} Moving Admin Reset Pad")
        Stable_Check = true
        if Admin_Folder.Regen.CFrame.Y < 20 then
				  repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				  local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				  local looping = true
				  spawn(function()
				    while true do
				      game:GetService('RunService').Heartbeat:Wait()
						  game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						  cf.CFrame = Admin_Folder.Regen.CFrame * CFrame.new(-1*(Admin_Folder.Regen.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						  if not looping then break end
				    end
				  end)
				  spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				  wait(0.3)
				  looping = false
				  game.Players:Chat("skydive me")
				  wait(0.2)
				  game.Players:Chat("respawn me")
				  wait(0.2)
        end
        wait(0.5)
        Stable_Check = false
        alert(player, "{Move.lua} Done Moving Admin Reset Pad")
      else
        alert(player, "{Move.lua} Already Moving, Please Wait")
      end
    end
  end
  if msg == prefix.."movepads" then
    if player.name == Players.LocalPlayer.name then
      
      if Stable_Check == false then
        alert(player, "{Move.lua} Moving Admin Pads")
        Stable_Check = true
        for i, v in pairs(Admin_Folder.Pads:GetDescendants()) do
          if v.Name == "Head" then
            if v.CFrame.Y < 500 then
              repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

              local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
              local looping = true

              spawn(function()
                while true do
                  game:GetService('RunService').Heartbeat:Wait()
                  game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                  cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                  if not looping then break end
                end
              end)
              spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
              wait(0.3)
              looping = false
              game.Players:Chat("skydive me")
              wait(0.2)
						  game.Players:Chat("respawn me")
              wait(0.2)
            end
          end
        end
        wait(0.5)
        Stable_Check = false
        alert(player, "{Move.lua} Done Moving Admin Pads")
      else
        alert(player, "{Move.lua} Already Moving, Please Wait")
      end
    end
  end
  if msg == prefix.."findpads" then
    local done = false
    for i, v in pairs(Admin_Folder.Pads:GetDescendants()) do
      if done == false then
        workspace[LP.name].HumanoidRootPart.CFrame = v:FindFirstChild("Head").CFrame
        done = true
      end
    end
  end
  if msg == prefix.."pb" then
    Players:Chat(("gear "..player.name.." 0000000000000000000018474459")) 
  end
  if msg == prefix.."bb" then
    Players:Chat(("gear "..player.name.." 00000000000000000000193769809"))
  end
  if string.sub(msg:lower(), 1, 5) == prefix.."kit " then
    local kit = string.sub(msg:lower(), 6, msg:len())
    local kitlist = {
      "war",
      "swords"
    }
    local kitgears = {
      ["war"] = {
        11999247,
        130113146,
        30393548,
        10884288,
        28277486,
        47597835
      },
      ["swords"] = {
        108158379
      }
    }
    if kit == "list" then
      for _,kitname in pairs(kitlist) do
        sendchat(kitname)
      end
    end
    for _,kitname in pairs(kitlist) do
      if kit == kitname and type(gear) ~= "table" then
        for key,gearid in pairs(kitgears[kitname]) do
          gear(player.name, toInteger(gearid))
        end
      end
    end
  end
  if msg == prefix.."gohouse" then
    if player.name == Players.LocalPlayer.name then
      local pos = CFrame.new(-12.5,8,94.5) 
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    else
      local oldCF = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      local pos = CFrame.new(-12.5,8,94.5) 
      Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
      wait(.2)
      Players:Chat(("jump me"))
      Players:Chat(("tp "..player.name.." me"))
      wait(1)
      Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCF
    end
  end
  if string.sub(msg:lower(), 1, 6):lower() == prefix.."spam " then
    spamming = true
    local strglower = string.gsub(msg:lower(), "me", player.name)
    if not strglower:find("hop") and not strglower:find("rej") then
      wspamming = string.sub(strglower, 7, strglower:len())
      alert(player, "Spamming "..wspamming)
      sendlog(player, "A user is spamming '"..wspamming.."'")
    else
      alert(player, "You cant spam "..string.sub(strglower, 7, strglower:len()))
    end
  end
  if msg == prefix.."stop" then
    spamming = false
    alert(player, "No longer spamming")
  end
  if msg == prefix.."portalgun" then
    Players:Chat(("gear ".. player.name.. " 00000000000000000034870758"))
  end
  if msg == prefix.."nok" then
    if player.name == Players.LocalPlayer.name then 
      alert(player, "Removing Hitboxes")
      for k,v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do
        v.TouchInterest:Remove()
      end
      alert(player, "Removed Hitboxes")
    end
  end
  if string.sub(msg, 1,4) == prefix.."sm " then
    local message = string.sub(msg, 5, msg:len())
    sm("Kohls Cool", message)
  end
  if msg == prefix.."wlc" then
    wlc = true
    alert(player, "Welcomes Enabled")
  end
  if msg == prefix.."dwlc" then
    wlc = false
    alert(player, "Welcomes Disabled")
  end
  if msg == prefix.."rej" then
    game:GetService("TeleportService"):Teleport(game.PlaceId, player)
  end
  if string.sub(msg:lower(), 0, 15) == prefix.."moveobby" then
    if player.name == Players.LocalPlayer.name then
      local Workspace_Folder = game:GetService("Workspace").Terrain["_Game"].Workspace
      game.Players:Chat(prefix.."nok")
      wait(0.05)
      
      if Stable_Check == false then
        alert(player, "Moving Obby")
        Stable_Check = true
        for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
          if v.CFrame.Y < 500 then
              repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

              local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
              local looping = true

              spawn(function()
                while true do
                  game:GetService('RunService').Heartbeat:Wait()
                  game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                  cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                  if not looping then break end
                end
              end)
              spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
              wait(0.3)
              looping = false
              game.Players:Chat("skydive me")
              wait(0.2)
              game.Players:Chat("respawn me")
              wait(0.75)
            end
          end
          for i, v in pairs(Workspace_Folder["Obby Box"]:GetChildren()) do
            if v.CFrame.Y < 500 then
              repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

              local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
              local looping = true

              spawn(function()
                while true do
                  game:GetService('RunService').Heartbeat:Wait()
                  game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                  cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                  if not looping then break end
                end
              end)
              spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
              wait(0.3)
              looping = false
              game.Players:Chat("skydive me")
              wait(0.2)
					    game.Players:Chat("respawn me")
              wait(0.2)
            end
          end
          wait(0.5)
          Stable_Check = false
          alert(player, "Done Moving Obby")
        else
          alert(player, "Already Moving, Please Wait")
        end
      else
        Players:Chat((prefix.."sm "..player.name.." has tried to move the obby"))
      end
    end
  end
  end
  end

--------------- ANTIS ----------------
spawn(function()
  while true do
    wait()
    ---------- ANTI DOG ---------
    if antidogb == true then
      if workspace:FindFirstChild(game.Players.LocalPlayer.Name) and workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Torso") then
          if workspace[game.Players.LocalPlayer.Name].Torso.Transparency == 1 and workspace[game.Players.LocalPlayer.Name].Torso.BrickColor == BrickColor.new("Brown") then
          game:GetService'Players':Chat(("undog me"))
          wait(0.25)
        end
      end
    end
    ---------- ANTI VOID ----------
    if antivoid == true then
      pcall(function()
        local cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        if cf.Y < -1 then
          Chat(prefix.."gohouse")
        end
      end)
    end
  end
end)
----------- ANTI MESSAGE CRASH --------
game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
  if antimb == true then
    if child.name == "MessageGUI" then
      if not child:FindFirstChild("bg") then
        repeat wait() until child:FindFirstChild("bg")
      end
      child.bg:Remove()
    end
  end
------------- ANTI BLIND ------------
  if antiblindb == true then
    if child.name == "EFFECTGUIBLIND" then
      pcall(function()
        repeat wait() child:Remove() until child.Parent == nil
      end)
    end
  end
end)
-------- ANTI JAIL --------
game:GetService("Workspace").Terrain["_Game"].Folder.ChildAdded:Connect(function(child)
  if antijail == true then
    if child.name == game.Players.LocalPlayer.Name .. "'s jail" then
      game:GetService'Players':Chat(("unjail me"))
      wait(0.25)
    end
  end
end)
--------- ANTI PUNISH ---------
game.Lighting.ChildAdded:Connect(function(child)
  if antipunishb == true then
    if child.name == game.Players.LocalPlayer.Name then
      game:GetService'Players':Chat(("unpunish me"))
      Chat("freeze others")
      regen()
      wait(1)
      Chat("speed others 0")
      wait(0.25)
    end
  end
end)
--------- ANTI FREEZE ---------
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(child)
  if child.name == "ice" and antifreeze == true then
    game:GetService'Players':Chat(("thaw me"))
    wait(0.28)
  end
end)

Spawn(function() 
  while true do
    forEach(banned, function(i,baned)
      if game.Workspace:FindFirstChild(baned) then
        game.Players:Chat("freeze "..baned)
        Chat("punish "..baned)
        Chat("blind "..baned)
        Chat("setgrav "..baned.." -9e9")
        regen()
      end
    end)
    if nokill == true then
      for a,b in pairs(whitelisted) do
        for i,pl in pairs(Players:GetPlayers()) do
          if pl.name == b then
          if pl.Character and pl.Character.Humanoid then
            if pl.Character.Humanoid.Health == 0 then 
              wait(0)
              game.Players:Chat((prefix.."re "..b))
              if b == LP.name then
                game.Players:Chat((prefix.."re me"))
              end
            end
          end
          end
        end
      end
    end
    if spamming == true then
      wait(0)
      Players:Chat((wspamming)) 
    end
    if anticrash == true then
      for _,playor in pairs(game.Players:GetPlayers()) do
        if playor:FindFirstChild("Backpack") then
          if playor.Backpack:FindFirstChild("VampireVanquisher") then
            local plrname = playor.Name
            game.Players:Chat(("ungear "..plrname))
            game.Players:Chat(("unsize "..plrname))
            game.Players:Chat(prefix.."sm "..plrname.." no")
            wait(0)
          end
          if playor:FindFirstChild("Character") then
            if playor.Character:FindFirstChild("VampireVanquisher") then
              game.Players:Chat(("ungear "..plrname))
              game.Players:Chat(("unsize "..plrname))
              game.Players:Chat(prefix.."sm "..plrname.." no")
              wait(0)
            end
          end
          if workspace:FindFirstChild(playor.name) then
            if workspace[playor.name]:FindFirstChild("HumanoidRootPart") then
              if workspace[playor.name].HumanoidRootPart.Size.Y < 1 then
                local plrname = playor.Name
                game.Players:Chat(("unsize "..plrname))
                game.Players:Chat(("unclone "..plrname))
                wait(0)
              end
            end
          end
        end
      end
    end
if closed == true then
      wait(0.5) 
      for k, v in next, game.Players:GetPlayers() do
      if k.Name ~= LP.name then
      if game.Workspace:FindFirstChild(k.Name) then
if workspace[k.name] then
      Chat("punish "..k.Name)
      end
end
      end
      end
      end
    for i,playor in pairs(padbanned) do
			for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
				if pad.Name == playor.."'s admin" then
					game.Players:Chat("respawn "..playor)
					game.Players:Chat(prefix.."sm Sorry "..playor.." no pads for u")
          regen()
				end
			end
		end
    wait(0) 
  end
end)
                            
game:GetService("Players").PlayerAdded:Connect(function(player)
    if hasGamePass(player.UserId, 66254) and player.Name ~= LP.name then
      if autoadmin ~= true then autoadmin = true end
      table.insert(admins, player.Name)
      alert(player, player.Name.." has been added because he has bought perm admin")
    end
    if wlc == true then
      game:GetService'Players':Chat((prefix.."sm lol "..player.name.." just joined"))
    end
    if player.name == "sepix48" then
      Chat("h KohlsCool Script Owner has joined")
    end
    
    if autoadminonjoin == true and autoadmin == true then
      local band = false
      if table.find(banned, player.name) then
        band = true
      end
      if band == false then
        Chat(prefix.."admin "..player.name)
      else
        Chat("pm "..player.name.." You are banned")
      end
    end
    player.Chatted:Connect(function(msg)
        if logchat == true and player.name ~= LP.name then
          sendchat("["..player.name.."]: "..msg)
        end
        command(player, msg)
    end)
end)

for _, plr in pairs(game.Players:GetPlayers()) do
  if hasGamePass(plr.UserId, 66254) and plr.Name ~= LP.name then
    autoadmin = true
    table.insert(admins, plr.Name)
    alert(plr, plr.Name.." has been added because he has bought perm admin")
  end
  plr.Chatted:Connect(function(msg)
      if logchat == true and plr.name ~= LP.name then
        sendchat("["..plr.name.."]: "..msg)
      end
      command(plr, msg)
  end)
end

game.Players:Chat(";firstperm")

sendlog(LP, "A User Has Executed KohlsCool")