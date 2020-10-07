# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('${HOME}/tools/miniconda/3/amd64/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "${HOME}/tools/miniconda/3/amd64/etc/profile.d/conda.sh" ]; then
        . "${HOME}/tools/miniconda/3/amd64/etc/profile.d/conda.sh"
    else
        export PATH="${HOME}/tools/miniconda/3/amd64/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate navigator

export NVM_DIR="$HOME/tools/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=${HOME}/tools/yarn/bin:${PATH}
export PATH=${HOME}/tools/bower/bin:${PATH}
export PATH=${HOME}/bin:${PATH}

DISTRO_NAME=$(cat /proc/version | grep -i -E "(CentOS|Fedora|Red)")
[ ! -z "${DISTRO_NAME}" ] && export LD_LIBRARY_PATH=${HOME}/tools/red/lib64:${LD_LIBRARY_PATH}
