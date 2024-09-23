{ pkgs, ...}: 

{
  home.packages = with pkgs; [
    # c
    gcc

    # rust
    rustc
    rustup

    # go
    go

    # make
    gnumake
    cmake

    # python
    python3

    # node
    nodejs-slim
    nodePackages.pnpm
  ];

  # Ensure rustup uses the Nix-provided cargo and rustc
  home.sessionVariables = {
    CARGO_HOME = "$HOME/.cargo";
    RUSTUP_HOME = "$HOME/.rustup";
  };
  # Use Nix's rustc and cargo, but allow rustup to manage additional targets
  home.file.".profile".text = ''
    export CARGO_HOME=$HOME/.cargo
    export RUSTUP_HOME=$HOME/.rustup

    # Add Nix-provided cargo and rustc to PATH
    export PATH=$HOME/.cargo/bin:$PATH
    '';
}
