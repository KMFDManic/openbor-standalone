#!/bin/bash
source "/var/volatile/project_eris.cfg"
cd "/var/volatile/launchtmp"
chmod +x "./OpenBOR"
echo -n 2 > "/data/power/disable"
HOME="/var/volatile/launchtmp" LD_LIBRARY_PATH="/media/project_eris/lib" SDL_GAMECONTROLLERCONFIG="$(cat ${PROJECT_ERIS_PATH}/etc/boot_menu/gamecontrollerdb.txt)" ./OpenBOR &> "${RUNTIME_LOG_PATH}/openbor.log"
echo -n 1 > "/data/power/disable"
cd "/var/volatile/launchtmp"
echo "launch_StockUI" > "/tmp/launchfilecommand"