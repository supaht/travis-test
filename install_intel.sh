#!/bin/bash

#wget -O m_ccompxe_online_2017.1.040.dmg http://registrationcenter-download.intel.com/akdlm/irc_nas/tec/11008/m_ccompxe_online_2017.1.040.dmg
#sudo hdiutil attach m_ccompxe_online_2017.1.040.dmg

wget -O m_ccompxe_online_2017.1.040.dmg https://s3.amazonaws.com/sp-dependencies/OSX/m_ipp_2017.1.126.dmg
sudo hdiutil attach m_ipp_2017.1.126.dmg
cd /Volumes/m_ipp_2017.1.126/m_ipp_2017.1.126.app/Contents/MacOS/ && sudo ./install.sh -s ~//build/supaht/travis-test/silent_ipp.cfg || exit 1
exit 0