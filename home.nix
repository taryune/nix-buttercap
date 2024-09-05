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

    # dev
    sgx-sdk
  ];

  programs.home-manager.enable = true;
}

