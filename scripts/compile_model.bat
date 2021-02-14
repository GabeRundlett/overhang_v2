set csgo_dir=C:\Program Files (x86)\Steam\SteamApps\common\Counter-Strike Global Offensive
set models_dir=custom_assets\models
"%csgo_dir%\bin\studiomdl" -game "%csgo_dir%\csgo" %models_dir%\%1.qc
