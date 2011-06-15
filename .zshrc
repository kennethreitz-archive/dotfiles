# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="kennethreitz"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/Cellar/ruby/1.9.2-p180/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/Cellar/python/2.7.1/Frameworks/Python.framework/Versions/2.7/bin:/Users/kreitz/.gem/ruby/1.8/bin:/Users/kreitz/.cabal/bin/:/usr/local/pdftex/texk/web2c/:/usr/local/share/npm/bin/:/usr/local/share/python/

export PYTHONPATH=/usr/local/lib/python
export GHSYNC_DIR=~/repos/

export CONVORE_NAME='kennethreitz'
export CONVORE_PASS='xxxxxxxxxxx'