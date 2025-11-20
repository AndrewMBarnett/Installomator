
whiterabbit)
	name="White Rabbit"
	type="dmg"
	bundleID="app.kadomaru.white-rabbit"
	downloadURL="https://delivery.kadomaru.app/white-rabbit/White%20Rabbit.dmg"
	appNewVersion="$(curl -fs https://delivery.kadomaru.app/white-rabbit/appcast.xml | xpath 'string(//item[1]/sparkle:shortVersionString')"
	expectedTeamID="TRLMQKJQ97"
	;;
windsurf)
    name="Windsurf"
    type="zip"
    myARCH="$(/usr/bin/arch)"
    if [ "$myARCH" != "arm64" ]; then
        myARCH=x64
    fi
    downloadURL="$( curl -s https://windsurf.com/editor/releases | tr '"\' "
" | grep -m1 "darwin-$myARCH" )"
    appNewVersion="$( echo "$downloadURL" | awk -F '-' '{ print $NF }' | cut -d '.' -f 1-3 )"
    expectedTeamID="83Z2LHX6XW"
    ;;
