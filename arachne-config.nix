{ config, pkgs, ... }:

{
 ### Imports ###
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
    ];

  ### Boot settings ###
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  ### Network ###
  networking.hostName = "arachne";
  networking.networkmanager.enable = true;

  ### Localization ### 
  time.timeZone = "Europe/Oslo";

  i18n.defaultLocale = "en_us.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };
 
  services.xserver.xkb = {
    layout = "no";
    variant = "";
  };

  console.keyMap = "no";

  ### Users ###
  users.users."lucycht" = {
    isNormalUser = true;
    description = "Lucy Ciara Herud-Thomassen";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  ### Packages ###
  environment.systemPackages = with pkgs; [
    vim
    git
  ];

  ### Nix settings ###
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  ### System version ###
  system.stateVersion = "26.05"; # Do not change.
}
