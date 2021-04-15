echo [
>&2 echo "Generating notes"
node notes.js | sed 's/$/,/'
>&2 echo "Generating YT data"
node yt.js | sed 's/$/,/'
>&2 echo "Generating HN data"
node hn.js | sed 's/$/,/'
cat <<EOF
{"Type":"note","Date":{"Unix":1615179600},"Title":"First note","Text":"\nIf you are reading this, then I've sucessfully set up my notes system. This is for notes with less content than full blog posts.\n\n", "Verbose": 1, "Id": "allsh-first-note"}
EOF
echo ]
