
obs)
    name="OBS"
    appName="OBS.app"
    type="dmg"
    if [[ $(arch) == "arm64" ]]; then
        SUFeedURL="https://obsproject.com/osx_update/updates_arm64_v2.xml"
        archiveName="OBS-Studio-[0-9.]*-macOS-Apple.dmg"
    elif [[ $(arch) == "i386" ]]; then
        SUFeedURL="https://obsproject.com/osx_update/updates_x86_64_v2.xml"
        archiveName="OBS-Studio-[0-9.]*-macOS-Intel.dmg"
    fi
    appNewVersion=$(curl -fs "$SUFeedURL" | xpath '(//rss/channel/item[sparkle:channel="stable"]/sparkle:shortVersionString/text())[1]' 2>/dev/null)
    downloadURL=$(curl -fs "$SUFeedURL" | xpath 'string(//rss/channel/item[sparkle:channel="stable"]/enclosure/@url[1])' 2>/dev/null)
    archiveName=$(basename "$downloadURL")   
    versionKey="CFBundleShortVersionString"
    blockingProcesses=( "OBS Studio" )
    downloadURL=$(downloadURLFromGit obsproject obs-studio )
    appNewVersion=$(versionFromGit obsproject obs-studio )
    expectedTeamID="2MMRE5MTB8"
    ;;
