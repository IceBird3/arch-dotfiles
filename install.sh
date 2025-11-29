#!/bin/bash

set -e
find "$(pwd)" -type f -name 'link.py' | xargs -I {} sh -c 'cd $(dirname {}) && python $(basename {})'

## FINALIZE

./scripts/switch-wallpaper.sh ~/code/arch-dotfiles/wallpapers/fantasy-landscape2.png >/dev/null 2>/dev/null

sleep 15
sleep 120 && reboot &

echo "Done. Please reboot." | nvim
