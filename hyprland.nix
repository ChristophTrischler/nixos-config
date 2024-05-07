{ pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    pyprland
    hyprpicker
    hyprcursor
    wayland
    hyprlock

    wezterm
    kitty
    warp-terminal

    starship
    neovim 

    firefox
    zathura
    mpv
    imv


    

    xfce.thunar-volman
    xfce.tumbler 
    ffmpegthumbnailer 
    xfce.thunar-archive-plugin
  ];
}
