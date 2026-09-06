# Dive into configuring your Sway WM setup

The main configuration file for endeavouros-sway can be found at `~/.config/sway/config`. and to make structure clean, you will find other parts of the config in its dropin path:

`~/.config/sway/config.d/`

here you have parts of the config named to fit what they include, these will sourced into the main config file automatically.

* autostart - everything to be automatically started with the session
* defaults - default window handling
* input - input device configuration
* workspaces - workspace handling
* keybindings - custom keybindings

User scripts can be found under `~/.config/sway/scripts/`

make sure marking them executable to be used in waybar or other tools.

Tools from the [sway_tools](https://github.com/killajoe/sway_tools/tree/main) collection are installed systemwide,

you can edit them if you copy them into users path under '~/.local/bin/'

These are currently:
* sway-gracefully-exit
* sway-new-workspace
* sway-power-profiles
* sway-powermenu
* swaycast and swayshot
* waybar-toggle
* sway-openweather

Here are the pathes to default used tool setups:

`~/.config/gtklock`

`~/.config/rofi`

`~/.config/swaync`

`~/.config/swayosd`

`~/.config/waybar`

## Firefox is autostarting at each login?

Open `~/.config/sway/config.d/autostart`
Add/remove `#` at the start of the line to disable/enable auto start at login:

```
# autostart apps
exec xdg-open https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/force-knowledge.md
exec  sleep 2 && keyhint
```

After (changed setting, firefox will not auto start at login)

```
# autostart apps
#exec firefox https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/force-knowledge.md
#exec  sleep 5 && telegram-desktop
```

## Autostart Implementation

**[dex](https://man.archlinux.org/man/extra/dex/dex.1.en) is used to auto start applications on startup in sway.**

Open `~/.config/sway/config.d/autostart`

Add/remove `#` at the start of the line to disable/enable xdg auto start.

Before (default setting, xdg auto start enabled)

```
# dex execute .desktop files
exec  dex --autostart --environment sway
```

After (changed setting, xdg auto start disabled)

```
# dex execute .desktop files
#exec  dex --autostart --environment sway
```

## waybar (panel)

`${HOME}/.config/.config/waybar`

**Includes two files:**

1. `config.jasonc`is the bar config, check in case to enable/disable/add modules.

You can see // is the commenting sign for disable modules:

```
  "modules-right": [
    "pulseaudio",
    "custom/separator",
    "custom/cputemp",
    // "custom/separator",
    // "custom/gputemp",
    "custom/separator",
```
2. `style.css` is the look and feel part written in css.

## screencast

```
# Screencast keybindings

# Start recording (select area, no audio)
bindsym --release $mod+Shift+y exec $HOME/.config/sway/scripts/swaycast

# Start recording (select area, with audio)
bindsym --release $mod+Shift+a exec $HOME/.config/sway/scripts/swaycast --audio

# Stop active recording
bindsym --release $mod+Shift+x exec $HOME/.config/sway/scripts/swaycast --stop
```

It is taken from sway-tools:

[sway_tools](https://github.com/killajoe/sway_tools)

In case you want to modify one or the other of the sway_tools scripts you can copy them to users path:
`cp /usr/bin/sway-powermenu ~/.local/bin/` and edit from there.


## Reset Configuration


The default configuration file for endeavouros-sway can be found

[here](https://raw.githubusercontent.com/endeavouros-team/endeavouros-sway-setup/refs/heads/main/skel/.config/sway/config).

To replace your current configuration with the default of endeavouros-sway run the following command. This will also make a backup of your current configuration at `"${HOME}"/.config/sway/config.1`

```
wget --backups=1 https://raw.githubusercontent.com/endeavouros-team/endeavouros-sway-setup/refs/heads/main/skel/.config/sway/config -P "${HOME}"/.config/sway/
```

## Help

Still having some issues? ask for help on [EndeavourOS Forum](https://forum.endeavouros.com/).
Or join the helpchat at telegram: [EndeavourOS-Chat](https://t.me/Endeavouros).
