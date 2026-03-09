#!/bin/bash
rm -rf export
mkdir export
cp -r src/* export
rm export/config.example.json
rm export/edit.html
rm export/manifest.json
files=(export/*.user)

if [ -e "${files[0]}" ]; then
    found_other=false
    for f in "${files[@]}"; do
        if [ "$f" != "export/example.user" ]; then
            found_other=true
            break
        fi
    done
    if [ "$found_other" = true ]; then
        rm -f "export/example.user"
        echo "Other .user files exist in export/. export/example.user has been deleted."
    else
        echo "No other .user files found in export/. export/example.user was kept."
    fi
else
    echo "No .user files found in export/ at all."
fi