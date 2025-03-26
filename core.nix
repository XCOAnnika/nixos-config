{ config, pkgs, ... }:

{
    imports = [
        ./modules/git.nix # Git
        ./modules/gnome.nix # GNOME
        ./modules/zsh.nix # ZSH
        ./modules/vscode.nix # VS Code / VSCodium
    ];

    # Include core packages
    environment.systemPackages = with pkgs; [
        firefox

        onlyoffice-desktopeditors

        keepassxc
        nextcloud-client
    ];
}