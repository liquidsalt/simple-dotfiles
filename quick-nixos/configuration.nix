{ ... }:

{
  imports =
  [
      #./hardware-configuration.nix
      ./modules/boot.nix
      ./modules/hardware.nix
      ./modules/locale.nix
      ./modules/user.nix
      ./modules/connectivity.nix
      ./modules/cli.nix
      ./modules/apps.nix
      ./modules/dev.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" ];

  nix.settings.auto-optimise-store = true;
  nix.gc = {
    automatic = true;
    dates     = "weekly";
    options   = "--delete-older-than 14d";
  };

  programs.nix-ld.enable = true;

  system.stateVersion = "26.05";
}
