$modelname overhang_v2/skybox_cliffs.mdl
$model "Body" "skybox_cliffs.smd"

$staticprop
$cdmaterials "models/overhang_v2/"
$surfaceprop "skybox_cliffs"

$sequence "idle" "skybox_cliffs.smd"
$collisionmodel "skybox_cliffs.smd" { $concave }
