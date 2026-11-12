{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Terminal
    kitty

    # Media
    helium
    nautilus
    loupe
    celluloid
    spotify

    # Messaging
    vesktop
    deltachat-desktop

    # Productivity
    obsidian
    libreoffice
    hunspell hunspellDicts.en-us hunspellDicts.fr-moderne
    anki
  ];
}
