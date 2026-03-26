# Windows Terminal - Warp Dark Theme

A color scheme for Windows Terminal.

## Installation

1. Copy `warp-dark.json` to your Windows Terminal settings directory:
   ```
   %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\
   ```

2. Add the scheme to your `settings.json`:
   ```json
   {
     "schemes": [
       // Paste the contents of warp-dark.json here
     ]
   }
   ```

3. Set as default:
   ```json
   {
     "profiles": {
       "defaults": {
         "colorScheme": "Warp Dark"
       }
     }
   }
   ```

## Files

- `warp-dark.json` - Color scheme
- `profiles.json` - Recommended profile settings

## Credits

Theme by **Rich Roll**
