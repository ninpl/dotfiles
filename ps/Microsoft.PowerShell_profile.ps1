Import-Module -Name Terminal-Icons
Import-Module posh-git

# Funciones
function irDev { set-location "C:\dev" }
function irHome { set-location $Env:USERPROFILE }
function irBlog { set-location "C:\dev\hugo\blog" }
function irOrigen { set-location "C:\dev\nervelink\Origen\origen" }
function reiniciarTerminal { . $PROFILE }
function abrirDir { start . }
function volver { cd .. }
function abrirPerfil { code $profile }
function irTemas { set-location $Env:USERPROFILE + "\AppData\Local\Programs\oh-my-posh\themes\" }
function resetearJBrain { Start-Process -FilePath 'G:\dev\rset-jetbrain\runme.bat' -NoNewWindow }
function conectarANervelink { ssh nvl@176.31.163.20 }

# Alias
set-alias dev irDev
set-alias blog irBlog
set-alias origen irOrigen
set-alias r reiniciarTerminal
set-alias abrir abrirDir
set-alias .. volver
set-alias p abrirPerfil
set-alias t irTemas
set-alias rset resetearJBrain
set-alias servidor conectarANervelink
set-alias home irHome

# OMP
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\n9p.omp.json" | Invoke-Expression
#Komorebi
$Env:KOMOREBI_CONFIG_HOME = $Env:USERPROFILE + '\.config\komorebi'
komorebic start --await-configuration