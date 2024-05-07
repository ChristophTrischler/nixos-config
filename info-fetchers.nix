{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neofetch
    onefetch
    pfetch
    ipfetch
    cpufetch
    ramfetch
    starfetch
    btop


    speedtest-rs
  ];
}
