---@meta _
---@diagnostic disable

local sjson = rom.mods['SGG_Modding-SJSON']


-- Portraits
local gui_portraits_vfx_path = rom.path.combine(rom.paths.Content, 'Game/Animations/GUI_Portraits_VFX.sjson')
sjson.hook(gui_portraits_vfx_path, function(data)
	for index, animation_data in ipairs(data.Animations) do
		-- hypnos test portraits
		if animation_data.Name == "Portrait_Hypnos_Sleeping_01" then
			animation_data.FilePath = "CassMaidReskin\\HypnosHexy_01"
		end
		if animation_data.Name == "Portrait_Hypnos_Sleeping_01_Float" then
			animation_data.FilePath = "CassMaidReskin\\HypnosHexy_01"
		end
		if animation_data.Name == "Portrait_Hypnos_Sleeping_01_Exit" then
			animation_data.FilePath = "CassMaidReskin\\HypnosHexy_01"
		end
		-- apollo real test maid pics
		if animation_data.Name == "Portrait_Apollo_Default_01" then
			animation_data.FilePath = "CassMaidReskin\\ApolloMaid_01"
		end
		if animation_data.Name == "Portrait_Apollo_Default_01_Exit" then
			animation_data.FilePath = "CassMaidReskin\\ApolloMaid_01"
		end

	end
end)