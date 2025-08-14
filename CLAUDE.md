# Omarchy Poolside Theme - Development Notes

## Theme Overview
A bright, eye-friendly theme for Omarchy with a pool/beach color scheme designed for comfortable use in bright environments while maintaining strong visual appeal.

## Development Process
This theme was created through an iterative process to optimize visibility and aesthetics:

1. **Initial Design**: Started with light backgrounds and pool-themed blues
2. **Visibility Optimization**: Added orange top bar for better text visibility
3. **Launcher Styling**: Blue background with orange border for visual hierarchy
4. **Terminal Comfort**: Light orange background for extended use
5. **Hyprland Compatibility**: Removed deprecated properties for v0.50.1

## Color Strategy
- **Orange (`#fb923c`)**: Primary visibility color for top bar and borders
- **Pool Blue (`#0ea5e9`)**: Main theme color for launchers and accents
- **Light Orange (`#fff7ed`)**: Warm, comfortable terminal background
- **Deep Ocean (`#0369a1`)**: Contrast elements and darker accents
- **Sand Yellow (`#fbbf24`)**: Warning states and tertiary highlights

## Technical Notes
- Uses GTK CSS variables for walker.css (not standard CSS)
- Light mode optimized with `light.mode` file
- Compatible with Hyprland 0.50.1+ (deprecated properties removed)
- Follows Omarchy theme naming convention (`omarchy-[name]-theme`)

## Installation Commands
```bash
# Install
omarchy-theme-install https://github.com/potable-anarchy/omarchy-poolside-theme

# Remove
omarchy-theme-remove poolside
```

## Files Structure
- `alacritty.toml` - Terminal colors with light orange background
- `hyprland.conf` - Window manager config (deprecated properties removed)
- `waybar.css` - Orange top bar with colored system modules
- `walker.css` - Blue launcher with orange border (GTK variables)
- `wofi.css` - Alternative launcher styling
- `light.mode` - Light mode indicator file
- Other standard Omarchy theme files for complete coverage