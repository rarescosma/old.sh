#!/usr/bin/env bash

DEBUG=0
DEPLOY_PATH="${HOME}/_/bin"

FILES=`find \`pwd\` -type f \
		-not -iwholename '*.git*' \
		\( ! -iname "_*" ! -iname ".*" ! -iname "*.md" ! -iname "$(basename $0)" \)`

for SRC in $FILES;
do
	BASE=$(basename $SRC)
	LAST_DIR=$(basename $(dirname $SRC))

	DEST="${DEPLOY_PATH}/${LAST_DIR}.${BASE}"

	if [[ $DEBUG -eq 1 ]]
	then
		echo "Source: $SRC"
		echo "Dest: $DEST"
		echo
	else
		ln -sf $SRC $DEST
	fi

done;
