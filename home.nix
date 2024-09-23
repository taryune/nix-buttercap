{ config, pkgs, ... }:

{
  imports = [
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

    # ssh
    openssl
  ];


  programs = {
    home-manager.enable = true;
    direnv = {
      enable = true;
      enableZshIntegration = true; # see note on other shells below
      nix-direnv.enable = true;
    };
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        ls = "lsd";
        ll = "lsd -l";
        la = "lsd -al";
        update-nix = "sudo nixos-rebuild switch --flake .#buttercap";
      };

      history = {
        size = 10000;
        path = "${config.xdg.dataHome}/zsh/history";
      };
      zplug = {
        enable = true;
        plugins = [
          { name = "zsh-users/zsh-autosuggestions"; } # Simple plugin installation
          { name = "themes/candy"; tags = [ as:theme from:oh-my-zsh ]; } # Installations with additional options. For the list of options, please refer to Zplug README.
        ];
      };
    };
  };
}

