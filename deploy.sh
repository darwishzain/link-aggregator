#!/bin/bash
rm -rf deploy
mkdir deploy
cp -r src/assets deploy/assets
rm deploy/assets/default-logo.png
cp src/index.html deploy/index.html
cp src/la.css deploy/la.css
cp src/*.json deploy/
rm deploy/config.example.json
cp src/main.js deploy/main.js