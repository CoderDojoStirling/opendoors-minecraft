#!/bin/bash

WORK_DIR=$HOME/Desktop/opendoors
CODE_DIR=${WORK_DIR}/stirling
SCRIPTCRAFT_DIR=${WORK_DIR}/coderdojo-scriptcraft-server
RUN_MINECRAFT_CLIENT=${WORK_DIR}/run-minecraft.sh
RUN_MINECRAFT_SERVER=${WORK_DIR}/run-minecraft-server.sh
EDIT_MINECRAFT_CODE=${WORK_DIR}/edit-minecraft-code.sh

sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y openjdk-7-jre
sudo apt-get install atom

rm -rf -p ${WORK_DIR}
mkdir -p ${WORK_DIR}
cd ${WORK_DIR}
git clone https://github.com/CoderDojoStirling/coderdojo-scriptcraft-server.git

cat > ${RUN_MINECRAFT_CLIENT} <<EOL
java -jar ${SCRIPTCRAFT_DIR}/lib/Minecraft.jar
EOL
chmod a+x ${RUN_MINECRAFT_CLIENT}

cat > ${RUN_MINECRAFT_SERVER} <<EOL
${SCRIPTCRAFT_DIR}/server/run-server.sh
EOL
chmod a+x ${RUN_MINECRAFT_SERVER}

cat > ${EDIT_MINECRAFT_CODE} <<EOL
atom ${CODE_DIR}/buildings.js
EOL
chmod a+x ${EDIT_MINECRAFT_CODE}

cat > ${RUN_MINECRAFT_SERVER} <<EOL
${SCRIPTCRAFT_DIR}/server/run-server.sh
EOL
chmod a+x ${RUN_MINECRAFT_SERVER}

ln -s ${SCRIPTCRAFT_DIR}/server/scriptcraft/blackboard/stirling ${CODE_DIR}
