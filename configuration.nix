{ inputs, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/ly.nix
    ./modules/fonts.nix
    ./modules/vm.nix
    ./modules/bluetooth.nix
    ./modules/docker.nix
    ./modules/xdg.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.blacklistedKernelModules = [ "hp_bioscfg" ];

  networking.hostName = "tonix";
  networking.networkmanager.enable = true;
  networking.networkmanager.wifi.powersave = false;

  time.timeZone = "Asia/Kolkata";
  
  nixpkgs.config.allowUnfree = true;

  users.users.zenith = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "libvirtd" "kvm" ];
  };

  environment.systemPackages = with pkgs; [
    neovim
    wget
    curl
    fastfetch
    ripgrep
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05";
}
