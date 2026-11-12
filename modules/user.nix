{ pkgs, ... }:
{
  users.users.commander = {
    isNormalUser = true;
    shell        = pkgs.fish;
    extraGroups  = [ "wheel" "networkmanager" ];
  };
}
