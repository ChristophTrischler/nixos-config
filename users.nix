{ pkgs, ... }:


{
  
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.chr = {
    isNormalUser = true;
    description = "christoph";
    extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
    	zsh
	spotify
	discord
	home-manager
    ];
  };


  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";
}
