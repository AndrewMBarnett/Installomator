
ciscojabber)
    name="ciscojabber"
    type="pkg"
    htmlContent=$(curl -fsL "https://www.webex.com/downloads/jabber.html")
    downloadURL=$(echo "$htmlContent" | sed -n "s/.*jabberAppUrl = '\([^']*Install_Cisco-Jabber-Mac\.pkg\)'.*/\1/p")
    appNewVersion=$(echo "$htmlContent" | grep -o "Download for macOS [0-9.]*" | grep -o "[0-9.]*$")
    expectedTeamID="DE8Y96K9QP"
    appName="Cisco Jabber.app"
    ;;
