{ config, pkgs, ... }:

# This Set as https://github.com/AceOfKestrels/shell-sources

{
    # Configure Zsh to load the plugins
    programs.zsh.promptInit = ''
	LOG_FOLDER="$HOME/.log"
	LOG_FILE="$LOG_FOLDER/shell-source.log" 	
	
	if [ ! -f "$LOG_FILE" ]; then

  	 [ ! -d "$LOG_FOLDER" ] && mkdir -p "$LOG_FOLDER"
  
 	 touch "$LOG_FILE"
	fi


	{
        REPO_URL="https://github.com/AceOfKestrels/shell-sources"
	TARGET_DIR="$HOME/shell-sources"
	
	if [ ! -d "$TARGET_DIR" ]; then
	  echo "Cloning repository into $TARGET_DIR..."
	  git clone "$REPO_URL" "$TARGET_DIR" >> $LOG_FILE
	else
	  echo "Repository already exists at $TARGET_DIR."
	  if [ -z "$SHELL_SOURCE_NO_PULL" ]; then
	    echo "Pulling latest changes..."
	    cd "$TARGET_DIR" && git pull >> $LOG_FILE
	  else
	    echo "SHELL_SOURCE_NO_PULL is set. Skipping git pull."
	  fi
	fi
	} >> $LOG_FILE
	
	source ~/shell-sources/source-all
    '';
}
