#!/bin/bash
rm -rf export
mkdir export
cp -r src/assets export/assets
rm export/assets/default-icon.png
rm export/assets/default-profile.png
cp src/index.html export/index.html
cp src/la.css export/la.css
cp src/*.user export/
rm export/example.user
cp src/main.js export/main.js