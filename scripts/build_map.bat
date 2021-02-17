set steam_dir=C:\Program Files (x86)\Steam\steamapps\common
set game_dir=%steam_dir%\Counter-Strike Global Offensive\csgo
set output_dir=%steam_dir%\Counter-Strike Global Offensive\csgo\maps

set game=%steam_dir%\Counter-Strike Global Offensive\csgo.exe
set vbsp=%steam_dir%\Counter-Strike Global Offensive\bin\vbsp.exe
set vvis=%steam_dir%\Counter-Strike Global Offensive\bin\vvis.exe
set vrad=%steam_dir%\Counter-Strike Global Offensive\bin\vrad.exe

@REM set vrad_settings=-both -final -textureshadows
set vrad_settings=-hdr

"%vbsp%" -game "%game_dir%" "%~dp0..\overhang_v2"
"%vvis%" -game "%game_dir%" -fast "%~dp0..\overhang_v2"
"%vrad%" %vrad_settings% -StaticPropLighting -StaticPropPolys -game "%game_dir%" "%~dp0..\overhang_v2"
xcopy /f /y "%~dp0..\overhang_v2.bsp" "%output_dir%\"
PAUSE
@REM Can't get the script to launch the game without a valid connection to steam..
@REM "%game%" -hijack -dev -console -allowdebug -game "%game_dir%" +map overhang_v2
