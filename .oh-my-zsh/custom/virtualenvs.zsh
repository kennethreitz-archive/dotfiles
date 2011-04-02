export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/share/python//virtualenvwrapper.sh
export VIRTUALENV_USE_DISTRIBUTE="1"


function cd(){
    builtin cd "$@"
    $(/Users/kreitz/.oh-my-zsh/tools/workon.py)
}