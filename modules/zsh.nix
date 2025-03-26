{ config, pkgs, ... }:

{
    # Enable Zsh
    programs.zsh.enable = true;
    
    # Set it as the default shell
    users.defaultUserShell = pkgs.zsh;

    environment.systemPackages = with pkgs; [
        zsh
        zsh-completions

        # Zsh plugins
        zsh-powerlevel10k
        zsh-autosuggestions
        zsh-syntax-highlighting
    ];

    # Configure Zsh to load the plugins
    programs.zsh.promptInit = ''
        [[ ! -f ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme ]] || 
        source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

        [[ -f /etc/zsh/p10k.zsh ]] && source /etc/zsh/p10k.zsh

        [[ -f ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && 
        source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh

        [[ -f ${pkgs.zsh-syntax-highlighting}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && 
        source ${pkgs.zsh-syntax-highlighting}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

        ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

        ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
    '';
}
