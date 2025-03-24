{ config, pkgs, ... }: 

{
    # Enable zsh
    programs.zsh.enable = true;

    # Set default shell
    users.defaultUserShell = pkgs.zsh;
}