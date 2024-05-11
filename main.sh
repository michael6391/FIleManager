#!/bin/bash
rsync -avh --delete --progress ~/Documents ~/Library/Mobile\ Documents/com~apple~CloudDocs/BackupDocuments
rsync -avhm --progress --include='*.pdf' --include='*/' --exclude='*' ~/Documents/ ~/Library/Mobile\ Documents/com~apple~CloudDocs/Obsidian/BRAIN/PDF/Updates
