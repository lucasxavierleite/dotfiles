# dotfiles

## Includes configuration files for:

- window manager: [sway](https://github.com/swaywm/sway), [Hyprland](https://github.com/hyprwm/Hyprland), [wayfire](https://github.com/WayfireWM/wayfire)
- bar: [waybar](https://github.com/Alexays/Waybar)
- launcher: [wofi](https://hg.sr.ht/~scoopta/wofi)
- notification daemon: [dunst](https://github.com/dunst-project/dunst)
- colorscheme generator: [pywal](https://github.com/dylanaraps/pywal)
- terminal: [alacritty](https://github.com/alacritty/alacritty)
- shell: [zsh](https://sourceforge.net/projects/zsh/), [bash](https://savannah.gnu.org/projects/bash/)
- zsh plugin manager: [antigen](https://github.com/zsh-users/antigen)
- text editor: [neovim](https://github.com/neovim/neovim)
- terminal file manager: [nnn](https://github.com/jarun/nnn)
- GTK theme: [Materia](https://github.com/nana-4/materia-theme)
- icon theme: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- fonts: [Roboto](https://fonts.google.com/specimen/Roboto), [Roboto Condensed](https://fonts.google.com/specimen/Roboto+Condensed), [Font Awesome 6](https://github.com/FortAwesome/Font-Awesome), [Ubuntu Condensed](https://design.ubuntu.com/font/)
- terminal fonts: [Hack](https://github.com/source-foundry/Hack), [Source Code Pro](https://github.com/powerline/fonts/tree/master/SourceCodePro), [Fira Mono](https://github.com/powerline/fonts/tree/master/FiraMono), [Roboto Mono](https://github.com/powerline/fonts/tree/master/RobotoMono), and [others patched for Powerline](https://github.com/powerline/fonts)

## Dependencies

- [swaybg](https://github.com/swaywm/swaybg): wallpaper utility
- [swayidle](https://github.com/swaywm/swayidle): idle management daemon
- [swaylock](https://github.com/swaywm/swaylock): screen locker
- [grim](https://sr.ht/~emersion/grim/): screenshots
- [slurp](https://github.com/emersion/slurp): select a region
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard): CLI clipboard utilities
- [wf-recorder](https://github.com/ammen99/wf-recorder): screen recorder (supports GIF)
- [jq](https://github.com/stedolan/jq): JSON processor
- [pywal](https://github.com/dylanaraps/pywal): colorscheme generator
- [playerctl](https://github.com/altdesktop/playerctl): media player CLI controller
- [light](https://github.com/haikarainen/light): backlight controller

## My own scripts

- [grim_window](.local/bin/grim_window.sh): take a screenshot of the focused window (sway-specific, requires [grim](https://sr.ht/~emersion/grim/), [wl-clipboard](https://github.com/bugaevc/wl-clipboard), and [jq](https://github.com/stedolan/jq))
- [colorpicker](.local/bin/colorpicker.sh): pick a color from the screen and copy to clipboard (requires [grimm](https://sr.ht/~emersion/grim/), [slurp](https://github.com/emersion/slurp), and [wl-clipboard](https://github.com/bugaevc/wl-clipboard))
- [setup_cron_env](.local/bin/setup_cron_env.sh): setup environment variables needed for cron jobs
- [set_wallpaper](.local/bin/set_wallpaper.sh): pick a random wallpaper from a directory (also changes the colorscheme using [pywal](https://github.com/dylanaraps/pywal))

## Extra

- [ACPI events handling](https://gist.github.com/lucasxavierleite/558b5f550b4365f05bae19a51ff358fe): handle ACPI events across multiple window managers (requires [acpid2](https://sourceforge.net/projects/acpid2/))

## Help

If you are interested in my dotfiles and are having issues replicating them, don't hesitate to ask me. Feel free to create an issue or even send me an email
