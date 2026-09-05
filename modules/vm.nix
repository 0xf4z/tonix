{ config, pkgs, ... }:

{
  programs.virt-manager.enable = true;

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      swtpm.enable = true;
    };
  };

  virtualisation.spiceUSBRedirection.enable = true;
  services.spice-vdagentd.enable = true;
  services.xserver.videoDrivers = [ "qxl" ];
}
