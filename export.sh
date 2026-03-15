#!/bin/bash
rm -rf export
mkdir export
cp -r src/* export
rm -r export/edit
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
        echo "User configuration found. Deleting example user configuration"
    else
        echo "Keep example user configuration."
    fi
else
    echo "No user configuration found."
fi