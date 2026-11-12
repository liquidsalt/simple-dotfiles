{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    neovim    # text editor
    yazi      # file manager
    starship  # prompt

    btop      # hardware utilization and task manager
    fastfetch # distro info display

    # archives
    zstd
    gnutar
    unar
  ];

  programs.git.enable  = true;

  programs.fish.enable = true;
  environment.shellAliases = {
    rebuild = "sudo nixos-rebuild switch /etc/nixos/#nixos";
  };
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$username$hostname[ • ](#6b6460)$directory$line_break$character";
      username = {
        show_always = true;
        format = "[$user]($style)";
        style_user = "#8c8682";
      };
      hostname = {
        ssh_only = false;
        format = "[@$hostname]($style)";
        style = "#8c8682";
      };
      directory = {
        truncation_length = 100;
        truncate_to_repo = false;
        format = "[$path]($style)";
        style = "#e6e1dc";
      };
      character = {
        success_symbol = "λ";
        error_symbol = "[λ](#c48282)";
      };
    };
  };
}
