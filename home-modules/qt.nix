{ pkgs, ... }:
{
  qt = {
    enable = true;

    platformTheme.name = "qtct";

    style = {
      name = "adwaita-dark";
      package = pkgs.adwaita-qt;
    };

    qt5ctSettings = {
      Appearance = {
        icon_theme = "Papirus-Dark";
        style = "adwaita-dark";
      };
    };

    qt6ctSettings = {
      Appearance = {
        icon_theme = "Papirus-Dark";
        style = "adwaita-dark";
      };
    };
  };
}
