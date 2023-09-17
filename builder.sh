currentdirectorynow=$(pwd)
if test -d CrosItems; then
    echo
else
    mkdir CrosItems
fi

cd CrosItems

clear
echo "[*]=============================[*]"
echo "[*]        HIVE Builder         [*]"
echo "[*]       Sh1mmer Builder       [*]"
echo "[*]                             [*]"
echo "[*]        Input Board          [*]"
echo "[*]=============================[*]"
read -p "[Board]> " board
clear
# Check Board
    echo "[*]=============================[*]"
    echo "[*]        HIVE Builder         [*]"
    echo "[*]       Sh1mmer Builder       [*]"
    echo "[*]                             [*]"
    echo "[*]      Checking Board...      [*]"
    echo "[*]=============================[*]"
    sleep 1
    case $board in
        zork) echo "Found Board";;
        volteer) echo "Found Board";;
        ultima) echo "Found Board";;
        tidus) echo "Found Board";;
        strongbad) echo "Found Board";;
        stout) echo "Found Board";;
        sentry) echo "Found Board";;
        reks) echo "Found Board";;
        pyro) echo "Found Board";;
        orco) echo "Found Board";;
        octopus) echo "Found Board";;
        nami) echo "Found Board";;
        kukui) echo "Found Board";;
        jacuzzi) echo "Found Board";;
        hatch) echo "Found Board";;
        hana) echo "Found Board";;
        grunt) echo "Found Board";;
        enguarde) echo "Found Board";;
        glimmer) echo "Found Board";;
        brask) echo "Found Board";;
        brya) echo "Found Board";;
        clapper) echo "Found Board";;
        corsola) echo "Found Board";;
        dedede) echo "Found Board";;
        coral) echo "Found Board";;
        *) echo "No board found but more may be added"; exit;;
    esac
    if test -d $board; then 
        echo
    else
        mkdir $board
    fi
    cd $board
    
    echo "[*]=============================[*]"
    echo "[*]        HIVE Builder         [*]"
    echo "[*]       Sh1mmer Builder       [*]"
    echo "[*]                             [*]"
    echo "[*]     Downloading Board...    [*]"
    echo "[*]=============================[*]"

wget -q https://dl.diffusehyperion.me/api/raw/?path=/crew/$board-crew.zip
clear
    echo "[*]=============================[*]"
    echo "[*]        HIVE Builder         [*]"
    echo "[*]       Sh1mmer Builder       [*]"
    echo "[*]                             [*]"
    echo "[*]      Unziping Board...      [*]"
    echo "[*]=============================[*]"
unzip -q index.html?path=%2Fcrew%2F$board-crew.zip

echo "$currentdirectorynow/CrosItems/$board is where your shim should be"
