{ pkgs, ... }:

{
  # Fonts
  fonts.packages = with pkgs; [
    jetbrains-mono
    nerd-font-patcher
    noto-fonts-emoji
    font-awesome 
    fira-code
    nerdfonts
  ];
}
