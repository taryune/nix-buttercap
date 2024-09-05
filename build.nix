{config,pkgs, ...}: {
  home.packages = with pkgs; [
    gcc
    cargo
    go
    gnumake
    nodejs-slim
    nodePackages.pnpm
  ];
}
