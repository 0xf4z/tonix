{ inputs, config, pkgs, ... }:

{
  imports = [
	./modules/librewolf.nix
	./modules/kitty.nix
	./modules/git.nix
	./modules/bash.nix
	./modules/fastfetch.nix
	./pkgs/utils.nix
	./home-modules/niri.nix
	./home-modules/waypaper.nix
	./home-modules/gtk.nix
	./home-modules/qt.nix
  ];
  home.username = "zenith";
  home.homeDirectory = "/home/zenith";
  home.stateVersion = "26.05";

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };

  home.packages = with pkgs; [
    btop
    kitty
    unzip
    rustdesk-flutter
    nautilus
    plezy
    vscodium
    fuzzel
  ];
}
