# Hammerspoon PC Keyboard Mappings

This configuration remaps PC-style keyboard shortcuts to work on macOS.

## Global Hotkeys

| Shortcut | Action |
|----------|--------|
| `Cmd+Shift+V` | Force paste (bypasses paste-blocking apps) |
| `Ctrl+Alt+L` | Lock screen (show login, don't sleep) |
| `Ctrl+Alt+Cmd+C` | Launch/cycle Chrome windows to mouse screen |
| `Ctrl+Alt+G` | Screenshot selection to clipboard |
| `Ctrl+Alt+A` | Show frontmost app name (debug) |
| `Alt+B` | Show frontmost app bundle ID (debug) |
| `Alt+H` | Toggle skip mode (disable key interception) |
| `Cmd+Shift+R` | Reload Hammerspoon config |

## Navigation Keys

| PC Shortcut | Action | Mac Equivalent |
|-------------|--------|----------------|
| `Home` | Beginning of line | `Cmd+Left` |
| `End` | End of line | `Cmd+Right` |
| `Ctrl+Home` | Beginning of document | `Cmd+Up` |
| `Ctrl+End` | End of document | `Cmd+Down` |
| ~~`Ctrl+Left`~~ | ~~Jump to beginning of next word~~ | *Disabled - used for desktop switching* |
| ~~`Ctrl+Right`~~ | ~~Jump to beginning of previous word~~ | *Disabled - used for desktop switching* |

## Selection Keys

| PC Shortcut | Action | Mac Equivalent |
|-------------|--------|----------------|
| `Shift+Home` | Select to beginning of line | `Cmd+Shift+Left` |
| `Shift+End` | Select to end of line | `Cmd+Shift+Right` |
| `Ctrl+Shift+Home` | Select to beginning of document | `Cmd+Shift+Up` |
| `Ctrl+Shift+End` | Select to end of document | `Cmd+Shift+Down` |
| ~~`Ctrl+Shift+Left`~~ | ~~Select previous word~~ | *Disabled - used for desktop switching* |
| ~~`Ctrl+Shift+Right`~~ | ~~Select next word~~ | *Disabled - used for desktop switching* |

## Edit Operations

| PC Shortcut | Action | Mac Equivalent |
|-------------|--------|----------------|
| `Ctrl+A` | Select All | `Cmd+A` or Edit menu |
| `Ctrl+C` | Copy | `Cmd+C` |
| `Ctrl+X` | Cut | `Cmd+X` |
| `Ctrl+V` | Paste | `Cmd+V` |
| `Ctrl+Z` | Undo | `Cmd+Z` |
| `Ctrl+Y` | Redo | `Cmd+Y` |
| `Ctrl+S` | Save | `Cmd+S` |
| `Ctrl+F` | Find | `Cmd+F` |
| `Ctrl+O` | Open | `Cmd+O` |
| `Ctrl+N` | New | `Cmd+N` |
| `Ctrl+W` | Close | `Cmd+W` |

## Browser Shortcuts

| PC Shortcut | Action | Mac Equivalent |
|-------------|--------|----------------|
| `Ctrl+L` | Go to location/address bar | `Cmd+L` |
| `Ctrl+H` | Open history | `Cmd+Y` |
| `Ctrl+J` | Open downloads | `Cmd+Shift+J` (Chrome) / `Cmd+J` (Firefox/Edge) / `Cmd+Alt+L` (Safari) |
| `Ctrl+R` | Reload page | `Cmd+R` |
| `Ctrl+Shift+R` | Hard reload (bypass cache) | `Cmd+Shift+R` |
| `Ctrl+T` | New tab | `Cmd+T` |
| `Ctrl+Shift+T` | Reopen closed tab | `Cmd+Shift+T` (Safari: `Cmd+Z`) |
| `Ctrl+N` | New window | `Cmd+N` |
| `Ctrl+Shift+P` | Private/Incognito mode | `Cmd+Shift+N` (Chrome/Safari/Edge) / `Cmd+Shift+P` (Firefox) |
| `Ctrl+F` | Find | `Cmd+F` |
| `Ctrl+G` | Find again | `Cmd+G` |
| `Alt+Left` | Navigate back | `Cmd+Left` |
| `Alt+Right` | Navigate forward | `Cmd+Right` |

## Text Formatting

| PC Shortcut | Action | Mac Equivalent |
|-------------|--------|----------------|
| `Ctrl+B` | Bold | `Cmd+B` |
| `Ctrl+I` | Italic | `Cmd+I` |
| `Ctrl+U` | Underline | `Cmd+U` |

## Special PC Clipboard Shortcuts

| PC Shortcut | Action | Notes |
|-------------|--------|-------|
| `Ctrl+Fn` | Copy | Emulates PC's `Ctrl+Insert` |
| `Shift+Fn` | Paste | Emulates PC's `Shift+Insert` |
| `Shift+Forward Delete` | Cut | Emulates PC's `Shift+Delete` |

## Function Keys

| Key | Action |
|-----|--------|
| `F2` | Rename (Finder) / Edit cell |
| `F3` | Find again |
| `F5` | Reload/Refresh |

---

## Application-Specific Behavior

### Microsoft Remote Desktop

Full passthrough mode - all PC shortcuts are sent directly to the remote Windows machine without any remapping.

| Shortcut | Behavior |
|----------|----------|
| `Ctrl+C/X/V/Z/Y` | Passthrough (native Windows behavior) |
| `Ctrl+S/F/O/N/W` | Passthrough |
| `Ctrl+A/B/I/U` | Passthrough |
| `Ctrl+R` | Passthrough |
| `Home/End` | Passthrough |
| `Ctrl+Home/End` | Passthrough |
| `Ctrl+Left/Right` | Passthrough |
| `Shift+Home/End` | Passthrough |
| `Ctrl+Shift+Home/End` | Passthrough |
| `Ctrl+Shift+Left/Right` | Passthrough |
| `F2/F3` | Passthrough |

**Special Fn combinations:**
| Shortcut | Sends |
|----------|-------|
| `Ctrl+Fn` | `Ctrl+C` (Copy) |
| `Shift+Fn` | `Ctrl+V` (Paste) |

### VirtualBox VM

Full passthrough mode for most shortcuts, with some specific translations for document navigation.

| Shortcut | Behavior |
|----------|----------|
| `Ctrl+C/X/V/Z` | Passthrough |
| `Ctrl+S/F/O/N/W` | Passthrough |
| `Ctrl+A/B/I/U` | Passthrough |
| `Ctrl+R` | Passthrough |
| `Home/End` | Passthrough |
| `Shift+Home/End` | Passthrough |
| `Ctrl+Shift+Home/End` | Passthrough |
| `Ctrl+Shift+Left/Right` | Passthrough |
| `F2/F3` | Passthrough |

**Translated shortcuts:**
| PC Shortcut | Sends | Action |
|-------------|-------|--------|
| `Ctrl+Y` | `Ctrl+Y` | Redo |
| `Ctrl+Home` | `Ctrl+Home` | Beginning of document |
| `Ctrl+End` | `Ctrl+End` | End of document |
| `Ctrl+Left` | `Ctrl+Left` | Previous word |
| `Ctrl+Right` | `Ctrl+Right` | Next word |

**Special Fn combinations:**
| Shortcut | Sends |
|----------|-------|
| `Ctrl+Fn` | `Ctrl+C` (Copy) |
| `Shift+Fn` | `Ctrl+V` (Paste) |

### Terminal / iTerm2

All Ctrl+key combinations pass through unchanged to allow standard readline/bash shortcuts.

| Shortcut | Terminal Function |
|----------|-------------------|
| `Ctrl+A` | Go to beginning of line |
| `Ctrl+B` | Move back one character |
| `Ctrl+C` | Interrupt/cancel |
| `Ctrl+E` | Go to end of line |
| `Ctrl+F` | Move forward one character |
| `Ctrl+H` | Backspace (delete char before cursor) |
| `Ctrl+I` | Tab completion |
| `Ctrl+J` | Newline (same as Enter) |
| `Ctrl+L` | Clear screen |
| `Ctrl+N` | Next command in history |
| `Ctrl+O` | Execute and fetch next |
| `Ctrl+R` | Reverse search history |
| `Ctrl+S` | Forward search / freeze |
| `Ctrl+U` | Delete to beginning of line |
| `Ctrl+V` | Literal insert |
| `Ctrl+W` | Delete previous word |
| `Ctrl+X` | Various (depends on next key) |
| `Ctrl+Y` | Yank (paste from kill ring) |
| `Ctrl+Z` | Suspend process |

**Navigation keys:**
| Key | iTerm2 | Terminal |
|-----|--------|----------|
| `Home` | Passthrough | `Alt+Left` |
| `End` | `End` key | `Alt+Right` |

### Google Chrome

| Shortcut | Action |
|----------|--------|
| `Ctrl+L` | Go to address bar (`Cmd+L`) |
| `Ctrl+H` | Open history (`Cmd+Y`) |
| `Ctrl+J` | Open downloads (`Cmd+Shift+J`) |
| `Ctrl+R` | Reload page (`Cmd+R`) |
| `Ctrl+Shift+R` | Hard reload (`Cmd+Shift+R`) |
| `Ctrl+T` | New tab (`Cmd+T`) |
| `Ctrl+Shift+T` | Reopen closed tab (`Cmd+Shift+T`) |
| `Ctrl+Shift+P` | Incognito mode (`Cmd+Shift+N`) |
| `Ctrl+F` | Find (`Cmd+F`) |
| `Ctrl+G` | Find again (`Cmd+G`) |
| `Alt+Left` | Navigate back (`Cmd+Left`) |
| `Alt+Right` | Navigate forward (`Cmd+Right`) |
| `F2` | Rename (sends F2) |
| `Home` | Beginning of line (`Cmd+Left`) |
| `End` | End of line (`Cmd+Right`) |

### Safari

| Shortcut | Action |
|----------|--------|
| `Ctrl+L` | Go to address bar (`Cmd+L`) |
| `Ctrl+H` | Open history (`Cmd+Y`) |
| `Ctrl+J` | Open downloads (`Cmd+Alt+L`) |
| `Ctrl+R` | Reload page (`Cmd+R`) |
| `Ctrl+Shift+R` | Hard reload (`Cmd+Shift+R`) |
| `Ctrl+T` | New tab (`Cmd+T`) |
| `Ctrl+Shift+T` | Reopen closed tab (`Cmd+Z`) |
| `Ctrl+Shift+P` | Private window (`Cmd+Shift+N`) |
| `Ctrl+F` | Find (`Cmd+F`) |
| `Ctrl+G` | Find again (`Cmd+G`) |
| `Alt+Left` | Navigate back (`Cmd+Left`) |
| `Alt+Right` | Navigate forward (`Cmd+Right`) |
| `Home/End` | Passthrough (used for page navigation) |

### Firefox

| Shortcut | Action |
|----------|--------|
| `Ctrl+L` | Go to address bar (`Cmd+L`) |
| `Ctrl+H` | Open history (`Cmd+Y`) |
| `Ctrl+J` | Open downloads (`Cmd+J`) |
| `Ctrl+R` | Reload page (`Cmd+R`) |
| `Ctrl+Shift+R` | Hard reload (`Cmd+Shift+R`) |
| `Ctrl+T` | New tab (`Cmd+T`) |
| `Ctrl+Shift+T` | Reopen closed tab (`Cmd+Shift+T`) |
| `Ctrl+Shift+P` | Private window (`Cmd+Shift+P`) |
| `Ctrl+F` | Find (`Cmd+F`) |
| `Ctrl+G` | Find again (`Cmd+G`) |
| `Alt+Left` | Navigate back (`Cmd+Left`) |
| `Alt+Right` | Navigate forward (`Cmd+Right`) |
| `Home/End` | Passthrough (native Firefox behavior) |

### Microsoft Edge

| Shortcut | Action |
|----------|--------|
| `Ctrl+L` | Go to address bar (`Cmd+L`) |
| `Ctrl+H` | Open history (`Cmd+Y`) |
| `Ctrl+J` | Open downloads (`Cmd+J`) |
| `Ctrl+R` | Reload page (`Cmd+R`) |
| `Ctrl+Shift+R` | Hard reload (`Cmd+Shift+R`) |
| `Ctrl+T` | New tab (`Cmd+T`) |
| `Ctrl+Shift+T` | Reopen closed tab (`Cmd+Shift+T`) |
| `Ctrl+Shift+P` | InPrivate mode (`Cmd+Shift+N`) |
| `Ctrl+F` | Find (`Cmd+F`) |
| `Ctrl+G` | Find again (`Cmd+G`) |
| `Alt+Left` | Navigate back (`Cmd+Left`) |
| `Alt+Right` | Navigate forward (`Cmd+Right`) |
| `Home` | Beginning of line (`Cmd+Left`) |
| `End` | End of line (`Cmd+Right`) |

### Opera

| Shortcut | Action |
|----------|--------|
| `Ctrl+L` | Go to address bar (`Cmd+L`) |
| `Ctrl+H` | Open history (`Cmd+Y`) |
| `Ctrl+J` | Open downloads (`Cmd+J`) |
| `Ctrl+R` | Reload page (`Cmd+R`) |
| `Ctrl+Shift+R` | Hard reload (`Cmd+Shift+R`) |
| `Ctrl+T` | New tab (`Cmd+T`) |
| `Ctrl+Shift+T` | Reopen closed tab (`Cmd+Shift+T`) |
| `Ctrl+Shift+P` | Private mode (`Cmd+Shift+N`) |
| `Ctrl+F` | Find (`Cmd+F`) |
| `Ctrl+G` | Find again (`Cmd+G`) |
| `Alt+Left` | Navigate back (`Cmd+Left`) |
| `Alt+Right` | Navigate forward (`Cmd+Right`) |
| `Home/End` | Passthrough (used for page navigation) |

### Finder

| Shortcut | Action |
|----------|--------|
| `F2` | Rename file (via File menu) |

### TextMate

| Shortcut | Action |
|----------|--------|
| `Ctrl+V` | Paste via `Edit → Paste → Paste` menu |
| `Ctrl+A` | Select All via `Edit → Select → All` menu |

### FileZilla

| Shortcut | Behavior | Notes |
|----------|----------|-------|
| `Ctrl+C` | `Cmd+C` | May not work (app limitation) |
| `Ctrl+X` | `Cmd+X` | May not work (app limitation) |
| `Ctrl+V` | `Cmd+V` | May not work (app limitation) |

### 1Password 6 (NPassword_6)

| Shortcut | Action |
|----------|--------|
| `Ctrl+C` | `Cmd+C` (Copy) |

---

## Known Issues

- `Ctrl+Fn` & `Shift+Fn` don't work reliably in Microsoft Remote Desktop
- No cut/copy/paste functions in MinTTY (bash emulator) on Windows VM
- Event taps occasionally drop without reload (ongoing issue)
- FileZilla keyboard shortcuts may not work due to app limitations
