# PersonaCRT - ReShade Shader for Persona 4 Golden

A custom CRT-style shader made for Persona 4 Golden.

Features:
- Lens distortion
- Chromatic aberration
- Warm color grading
- CRT scanlines
- Phosphor mask
- Bloom
- Animated film grain
- Rounded screen corners


# Requirements

- Persona 4 Golden PC version
- ReShade 6.x or newer


# Installation

## 1. Install ReShade

Download ReShade from:

https://reshade.me/

Run the ReShade installer.

Select:

p4g.exe

Usually located at:

Steam\steamapps\common\Persona 4 Golden\p4g.exe


## 2. Select rendering API

Choose:

DirectX 10/11/12


## 3. Select shader packages

During installation, enable:

[x] ReShade Standard Effects

Other shader packages are not required.


## 4. Install PersonaCRT

Extract the archive into the Persona 4 Golden folder.

The final path should be:

Persona 4 Golden\
 └── reshade-shaders\
     └── Shaders\
         └── PersonaCRT.fx


## 5. Enable shader

Launch the game.

Open ReShade:

Home key (default)

Enable:

PersonaCRT

Adjust settings in the ReShade menu.


# Uninstallation

Delete:

reshade-shaders\Shaders\PersonaCRT.fx

The shader does not modify game files.

# Linux / Steam Deck

This shader was developed and tested with the Windows DirectX 11 version.

Running through Proton may require additional ReShade setup.
Linux compatibility is not officially supported.