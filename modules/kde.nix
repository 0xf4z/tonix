{pkgs, ...}:
{
services = {
  desktopManager.plasma6.enable = true;
};

environment.systemPackages = with pkgs; [
  kdePackages.kcolorchooser # Color picker
  kdePackages.ksystemlog # System log viewer
  hardinfo2 # System benchmarks and hardware info
  wayland-utils # Wayland diagnostic tools
  wl-clipboard # Wayland copy/paste support
  vlc # Media player
];
environment.plasma6.excludePackages = with pkgs; [
  kdePackages.aurorae # Window decoration theme engine
  kdePackages.plasma-browser-integration # Browser integration
  kdePackages.plasma-workspace-wallpapers # Default Plasma wallpapers
  kdePackages.konsole # KDE terminal emulator
  kdePackages.kwin-x11 # KWin X11 window manager
  kdePackages.ark # Archive manager
  kdePackages.elisa # Music player
  kdePackages.khelpcenter # KDE Help Center
  kdePackages.baloo-widgets # Baloo information/widgets in Dolphin
  kdePackages.dolphin-plugins # Extra Dolphin plugins
  kdePackages.ffmpegthumbs # Video thumbnails in Dolphin
  kdePackages.krdp # KDE Remote Desktop Protocol support
  kdePackages.plasma-keyboard # On-screen/touch keyboard
  kdePackages.qtvirtualkeyboard # Qt virtual keyboard backend
];
}
