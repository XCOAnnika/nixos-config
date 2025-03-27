{ config, pkgs, ... }:

# This Setsup hyfetch with fastfetch as a base

{

    environment.systemPackages = with pkgs; [
        fastfetch
        hyfetch
    ];

    # Configure Zsh to load the plugins
    programs.zsh.promptInit = ''
	hyfetch
    '';
}
