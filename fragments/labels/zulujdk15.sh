
zulujdk15)
    name="Zulu JDK 15"
    type="pkgInDmg"
    packageID="com.azulsystems.zulu.15"
    if [[ $(arch) == i386 ]]; then
        downloadURL=https://cdn.azul.com/zulu/bin/$(curl -fs "https://cdn.azul.com/zulu/bin/" | grep -Eio '">zulu15.*ca-jdk15.*x64.dmg(.*)' | cut -c3- | sed 's/<\/a>//' | sed -E 's/([0-9.]*)M//' | awk '{print $2 $1}' | sort | cut -c11- | tail -1)
    elif [[ $(arch) == arm64 ]]; then
        downloadURL=https://cdn.azul.com/zulu/bin/$(curl -fs "https://cdn.azul.com/zulu/bin/" | grep -Eio '">zulu15.*ca-jdk15.*aarch64.dmg(.*)' | cut -c3- | sed 's/<\/a>//' | sed -E 's/([0-9.]*)M//' | awk '{print $2 $1}' | sort | cut -c11- | tail -1)
    fi
    expectedTeamID="TDTHCUPYFR"
    appCustomVersion(){ java -version 2>&1 | grep Runtime | awk '{print $4}' | sed -e "s/.*Zulu//" | cut -d '-' -f 1 | sed -e "s/+/\./" }
    appNewVersion=$(echo "$downloadURL" | cut -d "-" -f 1 | sed -e "s/.*zulu//") # Cannot be compared to anything
    ;;
