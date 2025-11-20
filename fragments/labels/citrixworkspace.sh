
citrixworkspace)
    name="Citrix Workspace"
    type="pkg"
    parseURL=$(curl -fs "https://downloadplugins.citrix.com/ReceiverUpdates/Prod/catalog_macos.xml" | xmllint --xpath 'string(//Installer/DownloadURL)' -)
    downloadURL=https://downloadplugins.citrix.com/ReceiverUpdates/Prod/$parseURL
    appNewVersion=$(curl -fs "https://downloadplugins.citrix.com/ReceiverUpdates/Prod/catalog_macos.xml" | xmllint --xpath 'string(//Installer/Version)' -)
     versionKey="CitrixVersionString"
     expectedTeamID="S272Y5R93J"
     ;;
cleartouchcollage)
    name="Collage"
    type="pkgInZip"
    packageID="com.cvte.cleartouch.mac"
    downloadURL=$(curl -fs https://www.getcleartouch.com/download/collage-for-mac/ | xmllint --html --xpath 'string(//*[@id="wpdm-filelist-412"]/tbody/tr[1]/td[2]/a/@href)' - 2> /dev/null | sed 's/ /%20/g')
    expectedTeamID="P76M9BE8DQ"
    ;;
