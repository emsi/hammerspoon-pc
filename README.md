# hammerspoon-pc
Hammerspoon Lua scripts that bring PC-style key bindings to macOS, with a focus on using a Mac mini with a normal external PC keyboard and accessing it remotely (e.g., Microsoft Remote Desktop, VirtualBox, or Synergy).

This is a labor of love for a left hand mouser who needs a ten key and therefore REALLY REALLY wants cut/copy/paste functions on the right hand. I also do a ton of work through remote servers with Microsoft Remote Desktop and in VMs, while still needing native macOS usability.

The canonical shortcut reference is in `Mappings.md`.

## Repository Structure
Key files and what they do:
- `init.lua`: entry point and wiring
- `config.lua`: keycode → action mapping table
- `actions.lua`: per-app shortcut translations (what gets sent)
- `functions.lua`: core helpers and sendKey/sendKeyOrMenu logic
- `taps_keyDown.lua`, `taps_keyUp.lua`, `taps_flagsChanged.lua`: event taps
- `Mappings.md`: human-readable shortcut reference

## Installation
Install [Hammerspoon](http://www.hammerspoon.org/)
Create a directory: `~/.hammerspoon` and put all files there. If you already have Hammerspoon, rename `init.lua` to `hammerspoon-pc.lua` before copying into `~/.hammerspoon`, then edit your `init.lua` and add the following:

require('hammerspoon-pc')

## Quick Start
1. Reload Hammerspoon config (menu bar icon → Reload Config).
2. Use `Mappings.md` as your shortcut reference.
3. If a shortcut behaves oddly in a specific app, check `actions.lua` for per-app overrides.

## Customizing
You can have each app get a different set of keypresses. Edit `actions.lua`. But first you need to know the internal application name. In `bindings.lua` you will see that Alt+a has been mapped to a Hammerspoon function that displays the app name. Enter that name exactly into the mapping, replacing spaces with underscores.

For example, moving the cursor to the beginning or the end of the line is tricky on a Mac. To have this work in all contexts (browsers are special snowflakes), there is this mapping in actions.lua:

```lua
beginLine = {
  default = {{'cmd'}, 'left'},
  Terminal = {{'alt'}, 'left'},
  iTerm2 = {},
  Microsoft_Remote_Desktop = {},
  VirtualBox_VM = {},
  -- SKip in browsers. cmd+arrows used to navigate pages
  Chrome = {},
  Safari = {},
  Firefox = {},
  Opera = {}
},
```

This says for the home key send Command+Left normally, but in browsers, VirtualBox and MS RDP pass through the home key and in Terminal (another special snowflake) send Alt+Left.



## Principles
Whoah to left hand people. Besides poor mouse choices on the market, Mac folks have the curse of right hand only for cut/copy/paste on keyboard. On the PC, Ctrl+Insert, Shift+Insert and Shift+Delete are key kit.

PC folks making their way to the mac have to contend with a huge divide in keyboard conventions and cursor movement, especially when remoting into Windows via RDP or VMs.

Selecting whole words with the keyboard is more natural when the modifier for such action is as close to the arrow keys as possible. On a Mac, you have to twist your wrist to reach for the option key. Millimeters matter when using the thumb on option and the index finger on left and right arrow keys.

IT professionals who need to administer PCs remotely and use alternate OSes need to run virtualization software and remote control software. That's a big problem from a Mac. The keyboard event model, and just plain weird shortcut choices just don't translate well. Try moving ten lines of anything one line at a time from a Windows VM or RDP session to a file in Atom. Talk about brain/key gymnastics (yes there are other ways to do this, I'm just talking about small quick things).

Add all that up- Left hand mouse keyboard wizards coming from decades of PC use (with diminishing brain plasticity) using Mac OS 10.12+ (Sierra)...are pretty much screwed. These scripts are an attempt to ease the transition**

\* Hello Karabiner Elements as a reaction to issues with keyboard Sierra hell for us GTD folks.

** Also a hope is to forestall arthritis by having to do the contortions the Mac keyboard layout cause, like tucking the thumb under the palm on the left hand to get Command+X, etc.

## Pasteboard, Right Hand?
There is only one "real" keyboard layout for max efficiency (see below). Yes, you can get good on the Mac layout. The PC will just always be better. Mac has a layout that comes close, but where on a PC there is an insert key, the mac has a function key. So to get x/c/p on the right hand consistent with the standard PC shortcuts (Ctrl+Insert / Shift+Insert / Shift+Delete), we use Hammerspoon to (literally) take back control.

## Why Hammerspoon (not Karabiner)?
Karabiner is great, but these mappings also handle app-specific behavior and remote/VM pass-through in one place.

## Open Issues
* No x/c/p functions work in MinTTY (bash emulator for git) on Windows VM
* Ctrl+Insert / Shift+Insert (Ctrl+Fn / Shift+Fn on Mac keyboards) don't work reliably in Microsoft Remote Desktop
