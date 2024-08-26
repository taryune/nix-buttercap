{config,pkgs, ...}: {
  home.packages = with pkgs; [
    gcc
    cargo
    go
    nodejs-slim
    nodePackages.pnpm
  ];
}
