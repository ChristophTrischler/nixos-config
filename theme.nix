{ pkgs, ... }:

{
  environment.variables.CLUTTER_BACKEND = "wayland";
  environment.variables.QT_AUTO_SCREEN_SCALE_FACTOR = "1";
  environment.variables.QT_QPA_PLATFORM = "wayland;xcb";
  environment.variables.QT_SCALE_FACTOR = "1";
  environment.variables.QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
  environment.variables.XDG_CURRENT_DESKTOP = "Hyprland";
  environment.variables.XDG_SESSION_DESKTOP = "Hyprland";
  environment.variables.XDG_SESSION_TYPE = "wayland";         


  # Override packages
  nixpkgs.config.packageOverrides = pkgs: {
  };

  environment.systemPackages = with pkgs; [
    gtk3
    gtk-engine-murrine 
    nwg-look
    gsettings-qt
  ];
}
