# Nort
A tool for organizing photos into a by-date structure while avoiding duplicates. Designed to be used on a Synology DiskStation

## Synology Setup
- install [SynoCLI File Tools](https://synocommunity.com/package/synocli-file)
- install Perl from Package Manager
- install Git Server from Package Manager

## Dependencies
- [click](https://click.palletsprojects.com/en/7.x/)

## Notes
- write a script that is stored in a shared tools folder on the NAS
- it checks a "staging" shared folder for folders containing images
- destination folder is first layer?
- source folders inside
- a config file is also stored in the staging folder that specifies which staging folder sends files where

- script flow
- paste media to be stored into nested source folders
- or have it auto-synced like from phones
- start the script
- probably startable only over ssh, can write a little remote script that opens the ssh connection and then runs the script
- script is interactive, lists the destination and source folders, should allow to select "All items in destination", or "a single destination/source pair"
- checks if media is already in destination folder, reports how many are novel/not novel
- write report to file to be stored somewhere in the staging folder
- don't allow user writes to this file?
- proceeds with renaming and copying to archive
- writes to report failures/successes
- rechecks which files are in the archive from staging and reports
- option to retry items that failed?
- ask to delete items from staging that were successful
- bonus: create a folder of symlinks to the just-uploaded media?
- or maybe just an option to create a folder with all of the images in it (for making an album)


- ipkg to get fdupes? https://www.synoforum.com/threads/install-ipkg-on-synology-diskstation-nas-community-source.1654/
- custom script for renaming files https://github.com/Gulivertx/synology-photos-auto-sort
- looks like it relies heavily on a tool that no longer exists https://gist.github.com/ahacke/23c7b51b8811c78712b1068a86900760
- guess I will build it into the python script then...
- or not? https://exiftool.org/

- fdupes troubleshooting:
    - https://community.synology.com/enu/forum/17/post/79487
    - https://salmanzg.wordpress.com/2012/11/27/duplicate-files-synology-nas/
    - https://synocommunity.com/package/synocli-file


How to get fdupes:
- add synocommunity as a package publisher https://synocommunity.com/
- install SynoCLI File tools from the package manager
- enable SSH https://krypted.com/synology/enable-ssh-access-synology/
- getting photos into moments: https://community.synology.com/enu/forum/1/post/132163

- getting exif working https://qrys.ch/using-the-exiftool-on-a-synology-nas/

[Distributing command line tools with Docker](https://spin.atomicobject.com/2015/11/30/command-line-tools-docker/)
[Python config strategies](https://hackersandslackers.com/simplify-your-python-projects-configuration/)
[Exiftools cheats](https://gist.github.com/ahacke/23c7b51b8811c78712b1068a86900760)