# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" > /dev/null
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX="true"
export ZSH="/home/velasco/.oh-my-zsh"
DISABLE_AUTO_UPDATE="true"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""
prompt default &> /dev/null
PROMPT='%F{magenta}%1~%f %F{red}❯%F{yellow}❯%F{green}❯ %f'


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
 DISABLE_AUTO_TITLE="false"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    zsh-autosuggestions 
    git 
    history 
    sudo 
    web-search 
    copydir 
    copyfile 
    copybuffer 
    dirhistory
    autojump
    #Faltan plugins
);

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#
# -------------------- VARIABLES --------------------
#

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.config/polybar/scripts:$PATH"
export PATH="$DOTFILES/setup-scripts:$PATH"
export PATH="/home/velasco/.local/bin:$PATH"
export PATH="/home/velasco/Documents/git-lab/dotfiles/setup-scripts:$PATH"
PATH=$PATH:$HOME/.config/polybar/scripts:$HOME/.scripts:$HOME/.scripts/theme-swap
export PATH="/home/velasco/.stack/snapshots/x86_64-linux-tinfo6/fe767865424443a2eed6f45f1f52e31d92286477e7e51ee31adfa3e42e907dac/8.8.4/bin:/home/velasco/.stack/compiler-tools/x86_64-linux-tinfo6/ghc-8.8.4/bin:/home/velasco/.stack/programs/x86_64-linux/ghc-tinfo6-8.8.4/bin:home/velasco/.yarn/bin:/home/velasco/.config/yarn/global/node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/var/lib/snapd/snap/bin:$PATH"

export DOTFILES="$HOME/Documents/git-lab/dotfiles"
export RICES="$DOTFILES/rices"
export BROWSER="brave"
export WALLPAPERS="$HOME/Pictures/Wallpapers/"
export PROGRAMMING="$HOME/workspaces" #Configurar el Dropbox

export PINK_NORD="$DOTFILES/rices/PinkNord"
export PINK_NORD_ALTERNATIVE="$DOTFILES/rices/PinkNordAlternative"
export SOLARIZED_DARK="$DOTFILES/rices/SolarizedDark"
export GRUVBOX="$DOTFILES/rices/Gruvbox"
export NORD="$DOTFILES/rices/Nord"
export DOOMBOX="$DOTFILES/rices/Doombox"

#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=2,regular,underline"


# o---------------------------------------------------------------------------------------o
# |--------------------------------------- ALIASES ---------------------------------------|
# o---------------------------------------------------------------------------------------o


# -------------------- Apps --------------------

alias idea='$HOME/software/idea-IC-201.7846.76/bin/idea.sh'
alias animalese='java -jar ~/Dropbox/Programming/Java/Tests/Animalese/out/artifacts/Animalese_jar/Animalese.jar'
alias sqldeveloper='$HOME/250gb/Desktop/sqldeveloper/sqldeveloper.sh'
alias webcamconf='guvcview'
alias cat='bat'
alias grep='rg'
alias find='fd'
alias tokei='tokei' #Dice cuantos programas hay escritos en un lenguaje determinado
alias wificon='nmtui'
alias todo='nb todo add'
alias rterm='exec zsh'
alias lg='lazygit'


# ------------------ Workspaces ------------------

alias wj="$EDITOR ~/workspaces/Java/"
alias wjs="$EDITOR ~/workspaces/JS/"

# -------------------- Places --------------------

# Go to 2TB
alias 2tb='cd $HOME/2tb'

# Go to 250GB
alias 250gb='cd $HOME/250gb'

# dotfiles
alias dotfiles='cd $HOME/Documents/git-lab/dotfiles'

# git-d => cd ~/Downloads/git-downloads
alias git-d='cd $HOME/Downloads/git-downloads'

# java
alias javadir='cd $HOME/Dropbox/Programming/Java'

# ---------------------------------------- Config and editors ---------------------------------------

# vim = nvim
alias vim='nvim'
alias v='nvim'
alias p='python3'
alias r='ranger'
alias z='zathura'
alias ja='java -jar'
alias y='yay'
alias g='git'
alias l='exa --icons -la'
alias li='exa --icons'

# ~/.zshrc
alias aliases='$EDITOR $HOME/.zshrc'
alias nz='$EDITOR $HOME/.zshrc'

# Ranger configuration file
alias nran='$EDITOR $HOME/.config/ranger'

# $EDITOR configuration file
alias nv='$EDITOR $HOME/.config/nvim/init.lua'
alias nbsp='$EDITOR $HOME/.config/bspwm/bspwmrc'
    
# Polybar config
alias npoly='$EDITOR $HOME/.config/polybar/config' 
alias npolys='$EDITOR $HOME/.config/polybar/scripts' 
 
# sxhkd config
alias nsx='$EDITOR $HOME/.config/sxhkd/sxhkdrc'

# kitty config
alias nkit='$EDITOR $HOME/.config/kitty/colorscheme.conf'

# rices.sh config
alias rices='cd $DOTFILES/rices'

# picom config
alias npi='$EDITOR $HOME/.config/picom/picom.conf'

# ---------------------------------------- Modification ----------------------------------------

alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias r!='rm -rfv'

# ---------------------------------------- Package Manager --------------------------------------

alias pi='sudo pacman -S'
alias ps='pacman -Ss'
alias pr='sudo pacman -R'

alias yi='yay -S'
alias ys='yay -Ss'
alias yr='yay -r'

# ---------------------------------------- Functionality ----------------------------------------

alias current-milis='date +%s%3N'


# remove all files from ~/Downloads/git-downloads
alias git-clean='rm -rf $HOME/Downloads/git-downloads/*'

# reloads zsh config
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

# partitions used space
alias used='df --total --block-size=G | grep dev/sd --color=never'

# My ps
alias myps='watch ps o pid,ppid,stat,comm'

# Size of a directory
alias sizeof='du -sh $1'

# spiecitify
alias spicetify='$HOME/spicetify-cli/spicetify'

alias findman="man -k . | rofi -dmenu | awk '{print $1}' | xargs -r man -Tpdf | zathura -"

# eng => esp-eng | esp => eng-esp
alias eng="trans -s es :en $1"
alias esp="trans -s en :es $1"

# just python as a calculator
alias calc="python3"

# calendar
alias cal="calcurse"

# num of installed packages
alias packages='expac -s "%-45n %m" -H M | sort -rhk 2 | nvim'

# displays the window classname
alias classname="xprop | grep 'CLASS'"

# ---------------------------------------- Showcase ----------------------------------------

# choose neofetch ascii distro
alias neofetch="clear && $HOME/.config/neofetch/launch-neofetch.sh"

# ---------------------------------------- Random ----------------------------------------

# alias porn='mpv "http://www.pornhub.com/random"' #Se pueden ver videos de internet desde el mpv miloko

# matrix effect (better than cmatrix since it supports terminal transparency)
alias matrix='unimatrix -s 96'
alias cmatrix='unimatrix -s 96'

# ---------------------------------------- Music ----------------------------------------


#
# -------------------- KEYBINDINGS --------------------
#

bindkey "^U" backward-kill-line

bindkey "^[l" forward-word
bindkey "^[h" backward-word
bindkey "^[j" down-line-or-history
bindkey "^[k" up-line-or-history

bindkey '^ ' autosuggest-accept
bindkey '^H' autosuggest-clear

#
# -------------------- ADDITIONAL SOURCES --------------------
#

#source $HOME/.oh-my-zsh/custom/plugins/zsh-directory-history/directory-history.plugin.zsh

# autosuggestions color
#autosuggestions_colorscheme_dir="$HOME/.oh-my-zsh/additional/plugins/auto-suggestions/auto-suggestions.colorscheme.conf"
#[ -f $autosuggestions_colorscheme_dir ] && ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=`$autosuggestions_colorscheme_dir`

if [ -d $HOME/.oh-my-zsh/additional ];
then

    # autosuggestions_colorscheme
    autosuggestions_colorscheme=$HOME/.oh-my-zsh/additional/plugins/auto-suggestions/auto-suggestions.colorscheme.conf
    [ -f $autosuggestions_colorscheme ] && source $autosuggestions_colorscheme

    # prompt
    prompt_config=$HOME/.oh-my-zsh/additional/prompt.conf
    [ -f $prompt_config ] && source $prompt_config
fi
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.dircolors ] && eval "$(dircolors ~/.dircolors)";
