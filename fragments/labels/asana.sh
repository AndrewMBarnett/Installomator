
asana)
     name="Asana"
     type="dmg"
     downloadURL="https://desktop-downloads.asana.com/darwin_universal/prod/latest/Asana.dmg"
     expectedTeamID="A679L395M8"
     ;;
aspera|\
ibmaspera)
    name="IBM Aspera"
    type="pkg"
    appNewVersion=$(curl -fsL https://downloads.ibmaspera.com/downloads/desktop/latest/stable/latest.json | jq -r '.entries.[] | select(.platform == "macos") | .version')
    downloadURL=$(curl -fsL https://downloads.ibmaspera.com/downloads/desktop/latest/stable/latest.json | jq -r '.entries.[] | select(.platform == "macos") | .url')
    expectedTeamID="PETKK2G752"
    ;;
