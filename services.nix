{ pkgs, ... }:

{
  # Systemd services setup
  systemd.packages = with pkgs; [
    auto-cpufreq
  ];
  
  # Enable Services
  services.geoclue2.enable = true;
  programs.direnv.enable = true;
  services.upower.enable = true;
  programs.zsh.enable = true;
  programs.dconf.enable = true;
  services.dbus.enable = true;
  services.dbus.packages = with pkgs; [
  	xfce.xfconf
  	gnome2.GConf
  ];
  services.mpd.enable = true;
  programs.thunar.enable = true;
  programs.xfconf.enable = true;
  services.tumbler.enable = true; 
  services.fwupd.enable = true;
  services.auto-cpufreq.enable = true;
  # services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  services.tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

        CPU_MIN_PERF_ON_AC = 0;
        CPU_MAX_PERF_ON_AC = 100;
        CPU_MIN_PERF_ON_BAT = 0;
        CPU_MAX_PERF_ON_BAT = 20;

       #Optional helps save long term battery health
       #START_CHARGE_THRESH_BAT0 = 40; # 40 and bellow it starts to charge
       #STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging

      };
};

  environment.systemPackages = with pkgs; [
    at-spi2-atk
    qt6.qtwayland
    swappy
    swaynotificationcenter
    libnotify
    playerctl
    psmisc
    grim
    slurp
    imagemagick
    swappy
    ffmpeg_6-full
    # wl-screenrec
    wf-recorder
    wl-clipboard
    cliphist
    clipboard-jh
    xdg-utils
    wtype
    wlrctl
    waybar
    rofi-wayland
    dunst
    avizo
    wlogout
    swww
    gifsicle
    blueman
  ];
}
