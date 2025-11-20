
fujifilmwebcam)
     name="FUJIFILM X Webcam 2"
     type="pkg"
     downloadURL=$(curl -fs "https://fujifilm-x.com/en-us/support/download/software/x-webcam/" | grep "https.*pkg" | sed -E 's/.*(https:\/\/dl.fujifilm-x\.com\/support\/software\/.*\.pkg[^\<]).*/\1/g' | sed -e 's/^"//' -e 's/"$//')
     appNewVersion=$( echo “${downloadURL}” | sed -E 's/.*XWebcamIns([0-9]*).*/\1/g' | sed -E 's/([0-9])([0-9]).*/\1\.\2/g')
     expectedTeamID="34LRP8AV2M"
     ;;
garminbasecamp)
    name="Garmin BaseCamp"
    type="pkgInDmg"
    downloadURL=$(curl -fs "https://www8.garmin.com/support/download_details.jsp?id=4449" | grep -Eo 'BaseCampforMac_[0-9]+\.dmg' | sort -V | tail -1 | sed 's#^#https://download.garmin.com/software/#')
    appNewVersion=$(curl -fs "https://www8.garmin.com/support/download_details.jsp?id=4449" | grep "BaseCamp for Mac software version" | head -n 2 | tail -n 1 | sed -E 's/.* ([0-9\.]*) .*/\1/g')
    expectedTeamID="72ES32VZUA"
    appName="BaseCamp.app"
     ;;
garminexpress)
    name="Garmin Express"
    blockingProcesses=( "Garmin Express" "Garmin Express Service" )
    type="pkgInDmg"
    downloadURL="https://download.garmin.com/omt/express/GarminExpress.dmg"
    appNewVersion="$(curl -fsL https://support.garmin.com/en-US/\?faq\=4QVp7mKSIA1LDk5fc1OHX8 | grep latest | grep -o "{.*}" | jq -r '.faq.content' | xmllint --html - 2>/dev/null | grep -o "for Mac: .* as" | grep -o "[0-9].*[0-9]").0"
    expectedTeamID="72ES32VZUA"
    ;;
