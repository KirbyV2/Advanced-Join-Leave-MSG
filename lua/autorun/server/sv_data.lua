hook.Add("PlayerInitialSpawn","lastjoin",function(ply) 
	local lastjoin = ply:GetPData("lastjoined") 
	if lastjoin then
		BroadcastMsg(Color(80, 251, 80), "● ", Color(255,255,255), ply:Nick() .. "(" .. ply:SteamID() .. ")" .. " has ", Color(80, 251, 80), "joined\n", Color(80, 80, 80), "● ", Color(255,255,255), "Last seen " .. lastjoin)
	else
		BroadcastMsg(Color(80,251,80), "● ", Color(255,255,255), ply:Nick() .. "(" .. ply:SteamID() .. ")" .. " has ", Color(80, 251, 80), "joined ", Color(255,255,255), "for the first time welcome!")
	end
end)

hook.Add("PlayerDisconnected","lastjoinsave",function(ply)
	ply:SetPData("lastjoined",os.date("%d/%m/%Y %I:%M%p", os.time()))
	BroadcastMsg(Color(255, 51, 51, 255), "● ", Color(255,255,255), ply:Nick() .. "(" .. ply:SteamID() .. ")" .. " has ", Color(255, 51, 51, 255), "left ", Color(255,255,255), "the server.")
end)
