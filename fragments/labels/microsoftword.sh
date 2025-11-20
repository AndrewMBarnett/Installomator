
microsoftword)
    name="Microsoft Word"
    type="pkg"
    continueBlocking="true"
    versionKey="CFBundleVersion"
    expectedTeamID="UBF8T346G9"
    downloadURL=$(curl -s https://learn.microsoft.com/en-us/officeupdates/update-history-office-for-mac | grep -i "Word" | grep -o 'https://[^"]*' | grep "Word" | head -n 1)
    appNewVersion=$(basename "$downloadURL" | sed -E 's/^Microsoft_[^_]+_([0-9]+\.[0-9]+\.[0-9]+)_.*/\1/')
    ;;
