export ZSH=/home/extra/.oh-my-zsh
ZSH_THEME="robbyrussell"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=2
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/.alias
source ~/dotfiles/.functions
source ~/bin/zsh_tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/bin/zsh_tools/zsh-autosuggestions/zsh-autosuggestions.zsh

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='emacs'
# else
#   export EDITOR='emacs'
# fi
# export ARCHFLAGS="-arch x86_64"

### C Graphical Programming Environement Variable
append_path_env_var()
{
	ENV_VAR=`printenv $1`
	CONTENT=$2
	if [[ ! -z $ENV_VAR ]]
	then
			CONTENT=$ENV_VAR:${2}
	fi
	export ${1}=$CONTENT
}
append_path_env_var "LIBRARY_PATH" "/home/extra/.graph_programming/lib"
append_path_env_var "LD_LIBRARY_PATH" "/home/extra/.graph_programming/lib"
append_path_env_var "CPATH" "/home/extra/.graph_programming/include"

fortune
