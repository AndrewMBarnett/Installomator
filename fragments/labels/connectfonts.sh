
connectfonts)
name="Connect Fonts"
type="dmg"
downloadURL="https://links.extensis.com/connect_fonts/cf_latest?language=en&platform=mac"
appNewVersion=$( curl -is "$downloadURL" | grep "location:" | grep -o "[[:digit:]]\+-[[:digit:]]\+-[[:digit:]]\+" | sed -e 's/-/./g' )
expectedTeamID="J6MMHGD9D6"
;;
container)
    name="container"
    type="pkg"
    archiveName="container-[0-9.]*-installer-signed"
    downloadURL="$(downloadURLFromGit apple container)"
    appNewVersion="$(versionFromGit apple container)"
    appCustomVersion(){
        if [ -f /usr/local/bin/container ];then
            /usr/local/bin/container --version | awk '{print $3}'
        fi
    }
    expectedTeamID="UPBK2H6LZM"
    ;;
