FROM alpine

RUN \
	apk add --no-cache \
	bash tmux \
	openssh openssh-server openssl rsync \
	git curl vim \
	\
	gcc \
	nodejs npm \
	rsync \
	python3 py3-pip \
	lua luarocks \
	\
	\
	&& curl -fsSL https://bun.sh/install | bash \
	&& /root/.bun/bin/bun add -g \
	esbuild \
	http-server live-server \
	\
	\
	&& luarocks install \
	luafilesystem \
	\
	\
	&& curl -fLo /root/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
	&& git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm \
	&& git clone https://github.com/marlon-erler/setup /root/A \
	&& /root/A/scripts/setup \

