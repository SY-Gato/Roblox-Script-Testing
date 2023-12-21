-- Created by master200crate
-- Put in ReplicatedFirst
if not game:GetService("RunService"):IsClient() then error("Must be object type LocalScript") end
if not script.Parent == game.ReplicatedFirst then error("Script must be in ReplicatedFirst") end

local contentProvider = game:GetService("ContentProvider")
local function CreateUi()
  local sgui = Instance.new("ScreenGui")
  local txtlabel = Instance.new("TextLabel")
  sgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  sgui.IgnoreGuiInset = True
  txtlabel = sgui
  txtlabel.Name = "InsideText"
  txtlabel.BackgroundColor3 = Color3.fromRGB(30,30,30)
  txtlabel.TextColor3 = Color3.fromRGB(255,255,255)
  txtlabel.Text = "0/0"
  return sgui
end
