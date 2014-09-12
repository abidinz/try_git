DEVELOPER_TOKEN="psarJVjBmUX6Te0n66v4MEF1DwLWj6ni"
FOLDER_ID="2438524869"  #_curl

curl https://upload.box.com/api/2.0/files/content -H "Authorization: Bearer $DEVELEOPER_TOKEN" -F filename=@$1 -F folder_id=$FOLDER_ID
