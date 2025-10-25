#!/bin/bash
rm -rf deploy
mkdir deploy
cp -r assets deploy/assets
cp index.html deploy/index.html
cp la.css deploy/la.css
cp config.json deploy/config.json
cp main.js deploy/main.js