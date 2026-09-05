{ pkgs, ... }:

{
  programs.librewolf = {
    enable = true;

    profiles.zenith = {
      id = 0;
      isDefault = true;

      extensions = {
        packages = with pkgs.nur.repos.rycee.firefox-addons; [
          ublock-origin
	  darkreader
          bitwarden
        ];
      };

      settings = {
        "gfx.webrender.all" = true;
        "media.ffmpeg.vaapi.enabled" = true;
        "media.hardware-video-decoding.enabled" = true;
        "privacy.resistFingerprinting" = true;
        "privacy.clearOnShutdown.cookies" = false;
        "privacy.clearOnShutdown_v2.cookies" = false;
        "privacy.clearOnShutdown.sessions" = false;
        "privacy.clearOnShutdown_v2.sessions" = false;
        "network.cookie.lifetimePolicy" = 0;
        "browser.startup.page" = 3;
        "browser.download.panel.shown" = true;
        "extensions.autoDisableScopes" = 0;
      };

      search = {
        force = true;
        default = "ddg";

        engines = {
          "Nix Packages" = {
            urls = [
              {
                template = "https://search.nixos.org/packages";

                params = [
                  {
                    name = "type";
                    value = "packages";
                  }
                  {
                    name = "query";
                    value = "{searchTerms}";
                  }
                ];
              }
            ];

            icon =
              "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";

            definedAliases = [ "@np" ];
          };

          "bing".metaData.hidden = true;
        };
      };

      userChrome = ''
        /* Custom UI */
      '';
    };
  };
}

