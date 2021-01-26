export ZSH="/Users/andreicroitoru/.oh-my-zsh"

ZSH_THEME="duellj"

plugins=(git laravel)

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"


export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
PATH="$HOME/.config/composer/vendor/bin:$PATH"


alias phpcs="/Users/andreicroitoru/.composer/vendor/bin/phpcs"
alias phpcbf="/Users/andreicroitoru/.composer/vendor/bin/phpcbf"

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

alias _="sudo"
alias tinker="php artisan tinker"
alias part="php artisan"
alias art="php artisan"
alias pa="php artisan"
alias serve="php artisan serve"
alias test="vendor/bin/phpunit"
alias dusk="php artisan dusk"
alias ci="composer install"
alias db-reset="php artisan migrate:fresh --seed"
alias dc="docker-compsoe"
alias dce="docker-compose exec"

export PATH="/usr/local/opt/php@8.0/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/sbin:$PATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/textlive:$PATH"
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
