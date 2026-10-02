{ pkgs, ... }:
{
  ### Packages ###
  environment.systemPackages = with pkgs; [
    vim
    git
  ];
}
