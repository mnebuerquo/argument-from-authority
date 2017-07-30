#!/bin/sh

TITLE="$@"
if [ -z "$TITLE" ]; then
	echo "You must provide a name for your presentation"
	exit 1
fi

# slugify title
# https://gist.github.com/oneohthree/f528c7ae1e701ad990e6
# decide if this is osx because slugify sed uses -E instead of -r
uname | grep -q Darwin
if [ 0 == $? ]; then
	FLAG="-E"
	BACKUP=".bak"
else
	FLAG="-r"
	BACKUP=""
fi
SLUG=$(echo "$TITLE" | iconv -t ascii//TRANSLIT | sed "$FLAG" s/[^a-zA-Z0-9]+/-/g | sed "$FLAG" s/^-+\|-+$//g | tr A-Z a-z)

CURRENT=$(pwd)
PARENT=$(dirname "$CURRENT")
PROJECT="$PARENT/$SLUG"

echo "Creating $TITLE in $PROJECT"

mkdir -p "$PROJECT"
cp "$CURRENT"/templates/* "$PROJECT/"

#find "$PROJECT" -type f -exec sed -i $BACKUP 's/TITLE/foo/g' {} +
cd "$PROJECT"
sed -i'.bak' -e "s/TITLE/$TITLE/g" *
rm *.bak

#cd "$PROJECT"
#git init
#git add ./
#git commit -m "Initial Commit"
