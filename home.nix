{ pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./git.nix
    ./build.nix
  ];

  home.username = "taru";
  home.homeDirectory = "/home/taru";
  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    # file manager
    nnn

    # utils
    fzf
    lsd
    gh
  ];

  programs = {
    home-manager.enable = true;
    direnv = {
      enable = true;
      enableZshIntegration = true; # see note on other shells below
      nix-direnv.enable = true;
    };
  };
}

