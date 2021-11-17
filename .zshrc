### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

eval "$(starship init zsh)"

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-rust \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-bin-gem-node

### End of Zinit's installer chunk

# 语法高亮
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma-continuum/fast-syntax-highlighting

# 自动建议
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# 补全
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions

# 加载 OMZ 框架及部分插件
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh
zinit snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh

zinit load djui/alias-tips

#zinit light spaceship-prompt/spaceship-prompt

zinit ice svn
zinit snippet OMZ::plugins/extract

# Load starship theme
zinit ice as"command" from"gh-r" \ # `starship` binary as command, from github release
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \ # starship setup at clone(create init.zsh, completion)
          atpull"%atclone" src"init.zsh" # pull behavior same as clone, source init.zsh
zinit light starship/starship

alias lg="lazygit"
alias ra="ranger"
alias tn="tmux new"
alias ta="tmux attach"
alias lzd="lazydocker"

# remap vi to neovim
if type nvim > /dev/null 2>&1; then 
    alias vi='nvim'
fi

# remap cat to bat
if type bat > /dev/null 2>&1; then
    alias cat='bat'
fi

# remap gcc to gcc-11
if type gcc-11 > /dev/null 2>&1; then
    alias gcc='gcc-11'
fi

# remap g++ to g++-11
if type g++-11 > /dev/null 2>&1; then
    alias g++='g++-11'
fi

# remap exa to ls
if type exa > /dev/null 2>&1; then
    alias ls='exa'
fi

export PATH="$HOME/.cargo/bin:/opt/homebrew/opt/llvm/bin:$PATH"
export GOPROXY=https://goproxy.io
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

