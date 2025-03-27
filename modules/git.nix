{ config, pkgs, ... }:

{
    programs.git = {
        enable = true;

        config = {
            core = {
                editor = "nano";
	    };
	    user = {
                name = "Annika";
                email = "mail@annika-keggenhoff.de";
            };
            init = {
                defaultBranch = "main";
            };
            credential = {
                credentialStore = "cache";
                helper = "manager";
            };
        };
    };

    environment.systemPackages = with pkgs; [
        git
	git-credential-manager
    ];
}
