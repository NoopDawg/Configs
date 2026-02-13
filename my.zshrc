OS="$(uname -s)"

# Homebrew PATH (macOS only)
if [ "$OS" = "Darwin" ]; then
    export PATH="/opt/homebrew/bin:$PATH"
fi

export PATH="$HOME/.local/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if [ "$OS" = "Darwin" ]; then
    __conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    CONDA_BASE="/opt/homebrew/Caskroom/miniconda/base"
else
    __conda_setup="$("$HOME/miniconda3/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
    CONDA_BASE="$HOME/miniconda3"
fi
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$CONDA_BASE/etc/profile.d/conda.sh" ]; then
        . "$CONDA_BASE/etc/profile.d/conda.sh"
    else
        export PATH="$CONDA_BASE/bin:$PATH"
    fi
fi
unset __conda_setup
unset CONDA_BASE
# <<< conda initialize <<<

# fzf
source <(fzf --zsh)

# pixi
export PATH="$HOME/.pixi/bin:$PATH"

prologue-assume-mutability-role() {
    eval $(command prologue-assume-mutability-role "$@")
}

echo "Setting AWS Bedrock Claude Environment Variable..."
export CLAUDE_CODE_USE_BEDROCK=1
export EDITOR="nvim"
