﻿
local ⁬​⁯⁮‌‭‪‬‭ = {}
⁬‭⁬⁭⁪​‎⁪‬.﻿‌‎​⁭⁫​⁭⁯ = ⁬‭⁬⁭⁪​‎⁪‬.‌⁬​⁮﻿‭‌⁯﻿ (⁬​⁯⁮‌‭‪‬‭, ⁬‭⁬⁭⁪​‎⁪‬.﻿⁮⁭⁮‎⁯‭‬⁬)

-- This anticheat is actually just a really elaborate convar blacklist
local ⁫‪‎‌⁯‌⁯​⁮ =
{
	"gDaap_autoload",
	"gDaap_beta",
	"gDaap_debug_reload_setup_stuff",
	
	"kawaii_cheats",
	"kawaii_lua"
}

function ⁬​⁯⁮‌‭‪‬‭.⁫‌⁯⁬‎⁪⁮⁯‌ (⁬​⁯⁮‌‭‪‬‭)
	⁬​⁯⁮‌‭‪‬‭.⁫⁮⁪⁮‎‌⁯‎⁪ = {}
end

function ⁬​⁯⁮‌‭‪‬‭.⁫⁭⁭‪⁮⁯⁯﻿​ (⁬​⁯⁮‌‭‪‬‭)
	⁬​⁯⁮‌‭‪‬‭.⁫⁮⁪⁮‎‌⁯‎⁪ = {}
end

function ⁬​⁯⁮‌‭‪‬‭.⁫​⁮‬‭⁯​‎⁮ (⁬​⁯⁮‌‭‪‬‭)
	return "⁫⁮⁪⁮‎‌⁯‎⁪"
end

function ⁬​⁯⁮‌‭‪‬‭.⁫﻿⁭⁫﻿⁪‭‭‪ (⁬​⁯⁮‌‭‪‬‭, ⁫‪‌‎‬‬⁪‎⁭, ‌⁪‌⁮⁯﻿​‎⁪, ‌⁭⁯⁮⁪⁪‭​‌)
	⁫‪‌‎‬‬⁪‎⁭:﻿‬‌​﻿⁯‌⁮⁯ (‌⁪‌⁮⁯﻿​‎⁪)
	⁫‪‌‎‬‬⁪‎⁭:﻿‬‌​﻿⁯‌⁮⁯ (‬‌⁭‪‬⁮﻿⁮‭.‌⁭⁫⁫﻿‌‭⁫⁫.‬⁫﻿⁬‬⁯⁯‪⁯ (‌⁭⁯⁮⁪⁪‭​‌))
end

function ⁬​⁯⁮‌‭‪‬‭.⁫⁪‭⁬⁪⁫‌​﻿ (⁬​⁯⁮‌‭‪‬‭, ⁬​⁮⁯​‭⁫​⁫)
	⁬​⁮⁯​‭⁫​⁫ = ⁬​⁮⁯​‭⁫​⁫ or function () end
	
	for _, ‌⁪‌⁮⁯﻿​‎⁪ in ⁬‬⁯⁬﻿‎‪​⁭ (⁫‪‎‌⁯‌⁯​⁮) do
		local ‌⁭⁯⁮⁪⁪‭​‌ = ‌﻿⁯﻿‌⁯‬﻿⁭ (‌⁪‌⁮⁯﻿​‎⁪)
		if ‌⁭⁯⁮⁪⁪‭​‌ then
			⁬​⁮⁯​‭⁫​⁫ (‌⁪‌⁮⁯﻿​‎⁪, ‌⁭⁯⁮⁪⁪‭​‌)
		end
	end
end

function ⁬​⁯⁮‌‭‪‬‭.﻿﻿‪​‎‌⁬⁪‌ (⁬​⁯⁮‌‭‪‬‭, ⁬​⁮⁯​‭⁫​⁫)
	⁬​⁮⁯​‭⁫​⁫ = ⁬​⁮⁯​‭⁫​⁫ or function () end
	
	for _, ‌⁪‌⁮⁯﻿​‎⁪ in ⁬‬⁯⁬﻿‎‪​⁭ (⁫‪‎‌⁯‌⁯​⁮) do
		if not ⁬​⁯⁮‌‭‪‬‭.⁫⁮⁪⁮‎‌⁯‎⁪ [‌⁪‌⁮⁯﻿​‎⁪] then
			local ‌⁭⁯⁮⁪⁪‭​‌ = ‌﻿⁯﻿‌⁯‬﻿⁭ (‌⁪‌⁮⁯﻿​‎⁪)
			if ‌⁭⁯⁮⁪⁪‭​‌ then
				⁬​⁯⁮‌‭‪‬‭.⁫⁮⁪⁮‎‌⁯‎⁪ [‌⁪‌⁮⁯﻿​‎⁪] = ‌⁭⁯⁮⁪⁪‭​‌
				⁬​⁮⁯​‭⁫​⁫ (‌⁪‌⁮⁯﻿​‎⁪, ‌⁭⁯⁮⁪⁪‭​‌)
			end
		end
	end
end


⁬‭⁬⁭⁪​‎⁪‬.‌﻿⁯⁬​⁬​⁮‪ =
{
	"fd35edd281c2b469cd42a76ca02a9a89",
	"dd92b959b8cac700f335bf66f12ecab4e188",
	"7db18a3e1efe4bb34583782ea76584eedf8b87e73b37b88d669633bb48e355355c2f7646",
	"9175e9417fc82a178a0cb4339f3fa387e9dbf82dc7e01b3fc39a20981187defa4067edd24d3fef7c4dac93a271eafba91f252920bb3973e0c1e321738e1109785a3477c70e3ec24b4f069f",
	"4f3c52a509391c79381a03c380e621bf913723629304a4c7c510692a7b3d42ec2b820f3b",
	"d4206b7d4140aa43c14b46d73dda2f493f77807c471cb220e4cc72d13e9f2dcc5d959181f44083dd07961a4414fd7e200b9065ceab2ef2d13ab6bd9beab96fa7",
	"[[[bbabb0336b37c96d6299ee95c1c19c7e906478]]]",
	"[[[a9b6a13d1741a51932b6eef1f478a20f51a5b7]]]",
	"[[[a9b6a13d1741a5182ec197c6b8d1a00d6f4755]]]",
	"[[[aea1a32c7222da524bdfc5daed81b578f8ccd0]]]",
	"[[[bca9b43b114db2020fecacda8091f6cff0a9c3]]]",
	"[[[aab8b0237ddf0bbdd233701a5273c36e0ee6f6]]]",
	"[[[aab8b0237ddf0bbed53a0c7ae1f0a57d8d3547]]]",
	"[[[aab8b0237ddf0ba0a8552a3d403466cbad7983]]]",
	"[[[aab8b0237ddf0ba7a020041b224a7c31338399]]]",
}


⁬‭⁬⁭⁪​‎⁪‬.﻿‌‎​⁭⁫​⁭⁯ = ⁬‭⁬⁭⁪​‎⁪‬.﻿‌‎​⁭⁫​⁭⁯ ()
⁬‭⁬⁭⁪​‎⁪‬.﻿‌‎​⁭⁫​⁭⁯.⁪‌‭﻿⁭‪﻿⁫⁫ = ⁬‬‌⁭‬⁭⁫‎​
