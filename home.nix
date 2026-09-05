{ inputs, config, pkgs, ... }:

{
  imports = [
	./modules/librewolf.nix
	./modules/kitty.nix
	./modules/git.nix
	./modules/bash.nix
	./modules/brave.nix
	./modules/wm/niri.nix
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
