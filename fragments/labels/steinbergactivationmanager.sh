
steinbergactivationmanager)
    # New installations requires the following labels PRIOR to Cubase
    #    steinbergactivationmanager
    #    steinberglibrarymanager
    #    steinbergmediabay
    #
    name="Steinberg Activation Manager"
    type="pkgInDmg"
    packageID="com.steinberg.activationmanager"
    downloadURL="https://www.steinberg.net/sam-mac"
    appNewVersion="$( curl -LIs "${downloadURL}" | grep -i "location:" | grep "dmg" | cut -d\/ -f7 | cut -d'.' -f1-3 )"
    expectedTeamID="5PMY476BJ6"
    ;;
