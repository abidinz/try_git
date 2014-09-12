DEVELOPER_TOKEN="psarJVjBmUX6Te0n66v4MEF1DwLWj6ni"
FOLDER_ID="2438524869"  #_curl
FILE=$1

# upload
curl https://upload.box.com/api/2.0/files/content -H "Authorization: Bearer $DEVELEOPER_TOKEN" -F filename=@$FILE -F folder_id=$FOLDER_ID

# refresh token
echo "curl https://api.box.com/oauth2/token -d 'grant_type=authorization_code&code=$AUTH_CODE&client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET' -X POST" | sh

# revoke
curl https://api.box.com/oauth2/revoke -d 'client_id=YOUR_CLIENT_ID&client_secret=YOUR_CLIENT_SECRET&token=YOUR_TOKEN' -X POST
