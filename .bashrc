if [ -z ${MASTER_WINPTY+x} ]; then
    export MASTER_WINPTY=1
    exec winpty $SHELL
fi

export PYTHONDONTWRITEBYTECODE=1

export WORKON_HOME="~/virtualenvs"
export MSYSTEM=MINGW64
source virtualenvwrapper.sh

alias md="mkdir"
alias rd="rmdir"

mcd() {
    mkdir -p "$1" && cd "$1"
}