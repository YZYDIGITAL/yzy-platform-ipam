# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle gitignore
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle z
antigen bundle history
antigen bundle vscode
antigen bundle zsh-interactive-cd
antigen bundle alias-finder
antigen bundle aliases
antigen bundle autoenv
antigen bundle common-aliases
antigen bundle copydir
antigen bundle copyfile
antigen bundle emoji 
antigen bundle colored-man-pages
antigen bundle encode64
antigen bundle extract
antigen bundle fzf
antigen bundle sudo
# Syntax highlighting bundle.
antigen bundle atuinsh/atuin@main
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
# Load the theme.
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/linuxbrew/.linuxbrew/opt/autoenv/activate.sh
export PATH=$PATH:/home/$USER/.local/bin
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
