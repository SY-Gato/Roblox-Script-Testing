local plrslist = {}
local plrs = game:GetService("Players")
local ts = game:GetService("TeleportService")
local id = game.PlaceId

local code = ts:ReserveServer(id)
plrslist = plrs:GetPlayers()
local totp = {}
for i=1,#plrslist do
  if plrs:FindFirstChild(plrslist[i]) then
      table.insert(totp,plrs:FindFirstChild(plrslist[i]))
    else
      table.remove(plrslist, i)
    end
  end
end
ts:TeleportToPrivateServer(id, code, totp)
