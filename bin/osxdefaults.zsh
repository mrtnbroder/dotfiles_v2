#!/bin/zsh

# Set custom OS X defaults
# See: github.com/mathiasbynens/dotfiles

# General UI/UX
# ----------------------------------------------------------------------

# Disable Menu bar transparency
# defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Enable snap-to-grid for desktop icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Set desktop icon size to 40 pixel ( matches dock icons )
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 40" ~/Library/Preferences/com.apple.finder.plist

# Set desktop label position to the right side
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:labelOnBottom 0" ~/Library/Preferences/com.apple.finder.plist

# Set text size to 11
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:textSize 11" ~/Library/Preferences/com.apple.finder.plist

# Always show scrollbars
# defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable automatic termination of inactive apps
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# Disable useless Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Disable Resume system-wide
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Show battery life percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "YES"

# Set sidebar icon size to medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Never go into computer sleep mode
# systemsetup -setcomputersleep Off > /dev/null

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Disable Notification Center and remove the menu bar icon
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist


# Input Devices
# ----------------------------------------------------------------------

# Trackpad: swipe between pages with three fingers
# defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true
# defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerHorizSwipeGesture -int 1
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 1

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Enable access for assistive devices
# echo -n 'a' | sudo tee /private/var/db/.AccessibilityAPIEnabled > /dev/null 2>&1
# sudo chmod 444 /private/var/db/.AccessibilityAPIEnabled
# TODO: avoid GUI password prompt somehow (http://apple.stackexchange.com/q/60476/4408)
# sudo osascript -e 'tell application "System Events" to set UI elements enabled to true'

# Automatically illuminate built-in MacBook keyboard in low light
# defaults write com.apple.BezelServices kDim -bool true
# Turn off keyboard illumination when computer is not used for 5 minutes
# defaults write com.apple.BezelServices kDimTime -int 300


# Mission Control
# ----------------------------------------------------------------------

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Bottom right corner → Mission Control
defaults write com.apple.dock wvous-br-corner -int 2
defaults write com.apple.dock wvous-br-modifier -int 0
# Top right screen corner → Desktop
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → Show application windows
defaults write com.apple.dock wvous-bl-corner -int 3
defaults write com.apple.dock wvous-bl-modifier -int 0


# Dock
# ----------------------------------------------------------------------

# Dock: enable the 2D Dock
# defaults write com.apple.dock no-glass -bool true

# Dock: position the Dock on the left
defaults write com.apple.dock orientation bottom

# Dock: set the icon size of Dock items to 40 pixels
defaults write com.apple.dock tilesize -int 40

# Dock: show indicator lights for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Dock: make icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Dock: animate opening applications
defaults write com.apple.dock launchanim -bool true

# Dock: use the scale effect for window minimizing
defaults write com.apple.dock mineffect scale

# Dock: speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1


# Finder
# ----------------------------------------------------------------------

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder: empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Finder: disable window and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: show the ~/Library folder (in OS X Lion)
chflags nohidden ~/Library

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool false

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Display full POSIX path as Finder window title
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: use column view in all windows by default
# Four-letter codes for the other view modes: `Nlsv`, `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true


# Panels
# ----------------------------------------------------------------------

# Panels: expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Panels: expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Panels: disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Panels: enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3


# Screen
# ----------------------------------------------------------------------

# Screen: require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Screen: save screenshots to the desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop"

# Screen: disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Screen: enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2


# Disks
# ----------------------------------------------------------------------

# Disks: avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disks: disable Time Machine prompts
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disks: disable local Time Machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal

# Disks: disable disk image verification
# defaults write com.apple.frameworks.diskimages skip-verify -bool true
# defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
# defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true


# iTunes
# ----------------------------------------------------------------------

# iTunes: make ⌘ + F focus the search input
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"

# iTunes: disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# iTunes: disable all the other Ping stuff
defaults write com.apple.iTunes disablePing -bool true


# Misc
# ----------------------------------------------------------------------

# Misc: only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Misc: disable Dictionary results
defaults write com.apple.spotlight DictionaryLookupEnabled -bool false

# Misc: disable auto-correct
# defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

for app in "Dashboard" "Dock" "Finder" "SystemUIServer" "Terminal" "iTunes"; do
    killall "$app" > /dev/null 2>&1
done