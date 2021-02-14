set csgo_dir=C:\Program Files (x86)\Steam\SteamApps\common\Counter-Strike Global Offensive
set textures_dir=custom_assets\textures
set materials_dir=custom_assets\materials
set subfolder=overhang_v2

mkdir "%csgo_dir%\csgo\materials\%subfolder%"
mkdir "%csgo_dir%\csgo\materials\models\%subfolder%"
copy "%textures_dir%\%1_col.vtf" "%csgo_dir%\csgo\materials\%subfolder%"
copy "%textures_dir%\%1_nrm.vtf" "%csgo_dir%\csgo\materials\%subfolder%"
copy "%materials_dir%\%1.vmt" "%csgo_dir%\csgo\materials\models\%subfolder%"
