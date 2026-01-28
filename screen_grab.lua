-- -------------------------------------------------------------------------------------
-- Quick and easy screen capture
-- -------------------------------------------------------------------------------------
-- Launch a screen capture that will copy the result to the clipboard
-- Uses macOS built-in screenshot tool (Cmd+Ctrl+Shift+4 = selection to clipboard)

function startNewGrabThenCopy()
  -- Cmd+Ctrl+Shift+4 triggers selection screenshot directly to clipboard
  hs.eventtap.keyStroke({'cmd', 'ctrl', 'shift'}, '4')
  log('Screenshot selection mode activated (copies to clipboard)')
end
