{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Compilers/Interpreters
    clang   # c/c++
    rustc   # rust
    jdk     # java

    # Build Tools
    unstable.xmake # c/c++
    cargo          # rust

    # Language Servers
    clang-tools                  # c/c++
    rust-analyzer                # rust
    jdt-language-server          # java

    # IDEs
    jetbrains.idea
    android-studio

    # Tools
    tokei
  ];
}
