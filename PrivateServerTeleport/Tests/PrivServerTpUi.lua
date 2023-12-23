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

print("plrlist: "..tostring(plrslist))
print("totp: "..tostring(totp))
-- Create TransitionUi


ts:TeleportToPrivateServer(id, code, totp)
