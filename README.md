# unifi-controller-upgrader
Upgrades the unifi controller on ARM Ubuntu/Debian builds

For those running on on oDroid c2 or other ARM platform, UBNT's debian repo is screwed up and errors out when trying to upgrade.
`Skipping acquire of configured file 'ubiquiti/binary-arm64/Packages' as repository 'http://www.ubnt.com/downloads/unifi/debian stable InRelease' doesn't support architecture 'arm64'`

This script upgrades your packages from the usual repos, then manually pulls the latest unifi controller package down and installs it.

### Usage
$ `sudo ./upgrade.sh`

### Troubleshooting
Script wont run: `chmod +x upgrade.sh`  
Errors with apt and dpkg: Did you remember to use sudo or run as root?
