{ config, pkgs, ... }:

{
    imports = [
        ./modules/office.nix # OnlyOffice, Image Editors, Fonts
        ./modules/git.nix # Git
        ./modules/gnome.nix # GNOME
        ./modules/cli/zsh.nix # ZSH
        ./modules/vscode.nix # VS Code / VSCodium
    ];

    # Include core packages
    environment.systemPackages = with pkgs; [
        firefox

        keepassxc
        nextcloud-client
    ];
}
