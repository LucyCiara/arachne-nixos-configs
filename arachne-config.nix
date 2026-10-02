
{
 ### Imports ###
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
      ./modules/boot-settings.nix
      ./modules/localization.nix
      ./modules/network.nix
      ./modules/settings.nix
      ./modules/users.nix
      ./modules/packages.nix
    ];

  ### System version ###
  system.stateVersion = "26.05"; # Do not change.
}
