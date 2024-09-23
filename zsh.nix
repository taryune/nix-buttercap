{ config, ... }:

{
  programs.zsh = {
    enable = true;

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
        { name = "zsh-users/zsh-autosuggestions"; }
        { name = "zsh-users/zsh-syntax-highlighting"; }
        { name = "jeffreytse/zsh-vi-mode"; }
        { name = "themes/candy"; tags = [ as:theme from:oh-my-zsh ]; } 
      ];
    };
  };
}

