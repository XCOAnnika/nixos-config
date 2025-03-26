{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        vscodium

        # Figure out how extensions work through nix
        vscode-extensions.bbenoist.nix
    ];

    # Settings don't work yet either :/
    environment.etc."xdg/VSCodium/User/settings.json".text = builtins.toJSON {
        "editor.fontSize" = 14;
        "editor.tabSize" = 4;
        "editor.detectIndentation" = false;
    };

    environment.sessionVariables = {
        XDG_CONFIG_HOME = "/etc/xdg:$HOME/.config";
    };
}