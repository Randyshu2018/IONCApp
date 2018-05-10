#!/bin/bash

function installNodeModules() {
	echo
	if [ -d node_modules ]; then
		echo "============== node modules installed already ============="
	else
		echo "============== Installing node modules ============="
		npm install
	fi
	echo
}
installNodeModules
nohup node index.js  > server.log 2>&1 &
