{...}:
{
  programs.git = {
    enable = true;
    settings = {
    user.name = "0xf4z";
    user.email = "0xf4z@protonmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
    };
  };
}
