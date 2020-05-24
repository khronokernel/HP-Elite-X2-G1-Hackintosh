#! /bin/bash
sudo mount -uw /
sudo defaults write /Library/Preferences/com.apple.windowserver.plist DisplayResolutionEnabled -bool true
cd ~/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/HiDPI-Fixup/
sudo cp DisplayProductID-4a5.plist /System/Library/Displays/Contents/Resources/Overrides/DisplayVendorID-30e4/DisplayProductID-4a5
sudo reboot