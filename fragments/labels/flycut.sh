
flycut)
    name="Flycut"
    type="zip"
    archiveName="Flycut.[0-9.]*.zip"
    downloadURL="$(downloadURLFromGit TermiT Flycut)"
    appNewVersion=$(versionFromGit TermiT Flycut )
    expectedTeamID="S8JLSG5ES7"
;;
fontagent10)
    name="FontAgent"
    type="pkgInDmg"
    packageID="com.insidersoftware.fontagent10.pkg"
    downloadURL="https://store.insidersoftware.com/_downloads/FontAgent10.dmg"
    appNewVersion="$(curl -fsL "https://updates.insidersoftware.com/software/fontagent10/release/notes.xml" | xpath 'string(//rss/channel/item[1]/enclosure/@sparkle:shortVersionString)')"
    expectedTeamID="936VDEB3YQ"
    blockingProcesses=( "FontAgent" "FontAgent Activator" )
;;
fontbase)
    name="FontBase"
    type="dmg"
    appNewVersion=$(curl -s https://releases.fontba.se/mac/latest-mac.yml | grep version: | awk -F ':' '{print $2}' | sed -e 's/^ *//' -e 's/ *$//')
    downloadURL="https://releases.fontba.se/mac/FontBase-$appNewVersion.dmg"
    expectedTeamID="457B89RFCZ"
    ;;
