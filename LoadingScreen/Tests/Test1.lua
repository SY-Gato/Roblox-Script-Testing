-- Created by master200crate
-- Put in ReplicatedFirst
if not game:GetService("RunService"):IsClient() then error("Must be object type LocalScript") end
if not script.Parent == game.ReplicatedFirst then error("Script must be in ReplicatedFirst") end

local function CreateUi()
  local sgui = Instance.new("ScreenGui")
  local txtlabel = Instance.new("TextLabel")
  sgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  sgui.IgnoreGuiInset = True
  sgui.Parent = script
  txtlabel = sgui
  txtlabel.Name = "InsideText"
  txtlabel.BackgroundColor3 = Color3.fromRGB(30,30,30)
  txtlabel.TextColor3 = Color3.fromRGB(255,255,255)
  txtlabel.Text = "0/0"
  txtlabel.Size = Udim2.new(1,0,1,0)
  txtlabel.Font = Enum.Font.Ubuntu
  txtlabel.TextSize = 20
  return sgui
end

local contentProvider = game:GetService("ContentProvider")
local ui = CreateUi()

repeat wait() until game:IsLoaded()

local assets = game:GetDescendants()
local maxAssets = #assets

local plr = game.Players.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")

ui.Parent = plrGui

for i, assetToLoad in assets do
  contentProvider:PreloadAsync({assetToLoad})
  ui:WaitForChild("InsideText").Text = i.."/"..maxAssets
end

wait(1)
ui:Destroy()
