{ ... }:
{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixos_small";
        padding = {
          top = 1;
        };
      };

      display = {
        separator = "  ";
      };

      modules = [
        "break"
        "title"
        {
          type = "os";
          key = "os    ";
          keyColor = "#89b4fa";
        }
        {
          type = "kernel";
          key = "kernel";
          keyColor = "#89b4fa";
        }
        {
          type = "wm";
          key = "wm    ";
          keyColor = "#89b4fa";
        }
        {
          type = "packages";
          format = "{} (pacman)";
          key = "pkgs  ";
          keyColor = "#89b4fa";
        }
        {
          type = "uptime";
          format = "{2}h {3}m";
          key = "uptime";
          keyColor = "#89b4fa";
        }
        {
          type = "memory";
          key = "memory";
          keyColor = "#89b4fa";
        }
        "break"
      ];
    };
  };
}

