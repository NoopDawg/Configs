OS="$(uname -s)"

if [ "$OS" = "Darwin" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    PATH=/opt/homebrew/bin/:$PATH
fi
