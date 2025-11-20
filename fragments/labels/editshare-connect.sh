
editshare-connect)
    name="EditShare Connect"
    type="pkg"
    packageID="com.editshare.connect
com.editshare.permsui"
    editshareInstanceURL="" # https://editshare.example.com
    appname="EditShare Connect"
    archiveName="Install EditShare Connect vLatest.pkg"
    downloadURL=$(curl -s ${editshareInstanceURL}/software.html | grep -o 'href="[^"]*Install EditShare Connect.*\.pkg"' | grep -o '".*"' | sed 's/"//g; s/ /%20/g')
    appNewVersion=$(curl -s ${editshareInstanceURL}/software.html | grep -o '<span class="highlight">[^<]*' | sed 's/<span class="highlight">//')
    expectedTeamID="URJUZJ3GCG"
    ;;editshare-flowstory)
    name="FLOW Story"
    type="dmg"
    editshareInstanceURL="" # https://editshare.example.com
    appname="FLOW Story"
    archiveName="FLOWStory-Latest.dmg"
    downloadURL=$(curl -s ${editshareInstanceURL}/software.html | grep -o 'href="[^"]*FLOWStory-Latest.dmg"' | grep -o '".*"' | sed 's/"//g')
    appNewVersion=$(curl -s ${editshareInstanceURL}/software.html | grep -o '<span class="highlight">[^<]*' | sed 's/<span class="highlight">//; s/\.[^.]*$//')
    expectedTeamID="URJUZJ3GCG"
    ;;egnyte)
    # credit: #MoeMunyoki from MacAdmins Slack
    name="Egnyte Connect"
    type="pkg"
    downloadURL="https://egnyte-cdn.egnyte.com/egnytedrive/mac/en-us/latest/EgnyteConnectMac.pkg"
    appNewVersion=$(curl -fs "https://egnyte-cdn.egnyte.com/egnytedrive/mac/en-us/versions/default.xml" | xpath '(//rss/channel/item/enclosure/@sparkle:shortVersionString)[1]' | cut -d '"' -f 2)
    expectedTeamID="FELUD555VC"
    blockingProcesses=( NONE )
    ;;
