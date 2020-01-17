#!/bin/bash

mvn package
mvn_rtn=$?
if [ "${mvn_rtn}" -eq 0 ]; then
echo "This Build is success ${mvn_rtn}"

sudo cat > CI.json <<EOF
{
"Date" : "$(date +%Y%m%d-%H:%M:%S)", "LSB" : "$(git rev-parse --verify HEAD)", "Branch" : "$(git rev-parse --abbrev-ref HEAD)"
}
EOF

curl -XPOST 'http://172.31.13.88:9200/classes/class/1/' -H "Content-Type: application/json" -d'@CI.json'
curl -XGET  http://localhost:9200/classes/class/1/?pretty

else
    echo "Maven Buildis Unsuccessful - with Retuned failure code ${mvn_rtn}"
    exit 1
fi
