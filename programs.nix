{config,pkgs, ...}: {
  programs = {
    zsh = {
      enable = true;
    };
   
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };
    
    tmux = {
      enable = true;
    };
  };
} 
