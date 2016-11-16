#!/bin/bash

#wget -O m_ccompxe_online_2017.1.040.dmg http://registrationcenter-download.intel.com/akdlm/irc_nas/tec/11008/m_ccompxe_online_2017.1.040.dmg
#sudo hdiutil attach m_ccompxe_online_2017.1.040.dmg

wget -O m_ipp_2017.1.126.dmg https://s3.amazonaws.com/sp-dependencies/OSX/m_ipp_2017.1.126.dmg
sudo hdiutil attach m_ipp_2017.1.126.dmg
cd /Volumes/m_ipp_2017.1.126/m_ipp_2017.1.126.app/Contents/MacOS/ && sudo ./install.sh -s ~/build/supaht/travis-test/silent_ipp.cfg || exit 1

echo "export INTEL_INSTALL_PATH=\"${DESTINATION}\"" >> ~/.bashrc-intel
echo ". \"\${INTEL_INSTALL_PATH}/bin/compilervars.sh\" intel64" >> ~/.bashrc-intel
echo "export LD_LIBRARY_PATH=\"\${INTEL_INSTALL_PATH}/ism/bin/intel64:\${INTEL_INSTALL_PATH}/lib/intel64_lin:\$LD_LIBRARY_PATH\"" >> ~/.bashrc-intel
echo "export PATH=\"\${INTEL_INSTALL_PATH}/bin:\$PATH\"" >> ~/.bashrc-intel
echo "function uninstall_intel_software {" >> ~/.bashrc-intel
echo "  find \"\${INTEL_INSTALL_PATH}\" -name 'uninstall.sh' -not -path '*/ism/uninstall.sh' -exec {} -s \;" >> ~/.bashrc-intel
echo "}" >> ~/.bashrc-intel
cat ~/.bashrc >> ~/.bashrc-intel
mv ~/.bashrc-intel ~/.bashrc

exit 0
