
obsbotcenter|\
obsbotwebcam)
    name="OBSBOT_Center"
    type="dmg"
    
    # Let the browser handle the download page with JavaScript
    if [[ $(arch) == "arm64" ]]; then
        downloadURL="https://www.obsbot.com/download/obsbot-center-mac-apple"
    else
        downloadURL="https://www.obsbot.com/download/obsbot-center-mac-intel"
    fi
    
    appNewVersion="2.0.13.64"
    expectedTeamID="7GJANK3822"
    ;;
