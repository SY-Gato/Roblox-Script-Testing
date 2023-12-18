-- created by master200crate, SY-Gato on github
-- Licensed under MIT

local function getPlayerAmt()
  local a = 0
  for i,v in pairs(game.Players:GetPlayers()) do
    a += 1
  end
  return a
end
