local plrslist = {}
local plrs = game:GetService("Players")
local ts = game:GetService("TeleportService")
local id = game.PlaceId

local code = ts:ReserveServer(id)
for i,v in pairs(plrs:GetPlayers()) do
  table.insert(plrslist,v.Name)
end
local totp = {}
for i=1,#plrslist do
  if plrs:FindFirstChild(plrslist[i]) then
    table.insert(totp,plrs:FindFirstChild(plrslist[i]))
  else
    table.remove(plrslist, i)
  end
end

--[[print("plrlist: "..tostring(plrslist))
print("totp: "..tostring(totp))]]
-- Create TransitionUi
local effectui = Instance.new("ScreenGui")
local textforui = Instance.new("TextLabel")
effectui.Name = "TransitionUi"
effectui.Parent = game.ReplicatedStorage
effectui.ResetOnSpawn = false
effectui.IgnoreGuiInset = true
effectui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
textforui.Size = UDim2.new(1,0,1,0)
textforui.Name = "Text"
textforui.Text = "Teleporting..."
textforui.Parent = effectui
textforui.BackgroundColor3 = Color3.fromRGB(30,30,30)
textforui.TextColor3 = Color3.fromRGB(255,255,255)


ts:TeleportToPrivateServer(id, code, totp, nil, nil, effectui)
