{ config, pkgs, ... }:

{
    imports = [
        ./modules/gnome.nix # GNOME Configuration
        ./modules/zsh.nix # ZSH Configuration
    ];

    # Include core packages
    environment.systemPackages = with pkgs; [
        git

        firefox

        vscode
        onlyoffice-desktopeditors

        keepassxc
        nextcloud-client
    ];
}