FROM alpine

RUN \
        echo "starting..." \
        \
        \
        && export HOME=/root \
        \
        \
        && apk add --no-cache \
        bash tmux icu-data-full shadow \
        openssh openssh-server openssl rsync \
        git curl vim \
        \
        gcc libc-dev \
        nodejs npm \
        rsync \
        python3 py3-pip \
        lua lua-dev luarocks \
        \
        \
        && curl -fsSL https://bun.sh/install | bash \
        && npm install -g \
        esbuild \
        http-server live-server \
        \
        \
        && luarocks-5.1 install \
        luafilesystem \
	moonscript \\
        \
        \
        && curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
        && git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm \
        && git clone https://github.com/marlon-erler/setup $HOME/A \
        && $HOME/A/scripts/setup \
	&& $HOME/A/scripts/backup restore \
	&& chsh /bin/bash \
	
