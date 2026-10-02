{ pkgs, ... }:
{
  ### Users ###
  users.users."lucycht" = {
    isNormalUser = true;
    description = "Lucy Ciara Herud-Thomassen";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
