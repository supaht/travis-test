#!/bin/bash

#wget -O m_ccompxe_online_2017.1.040.dmg http://registrationcenter-download.intel.com/akdlm/irc_nas/tec/11008/m_ccompxe_online_2017.1.040.dmg
#sudo hdiutil attach m_ccompxe_online_2017.1.040.dmg
cd /Volumes/m_ccompxe_online_2017.1.040/m_ccompxe_online_2017.1.040.app/Contents/MacOS/ && sudo ./install.sh -s ~/Developer/travis-test/silent.cfg || exit 1
exit 0