# Erlang with asdf
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
source ${ZDOTDIR:-~}/.zshrc

asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
brew install wxwidgets
brew install openjdk
echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ${ZDOTDIR:-~}/.zshrc
source ${ZDOTDIR:-~}/.zshrc
brew install fop

export KERL_CONFIGURE_OPTIONS="--with-ssl=$(brew --prefix openssl@1.1) --with-odbc=$(brew --prefix unixodbc)"
export CC="/usr/bin/clang -I$(brew --prefix unixodbc)/include" 
export LDFLAGS=-L$(brew --prefix unixodbc)/lib

brew install openssl@3
export KERL_CONFIGURE_OPTIONS="--with-ssl=$(brew --prefix openssl@3) --with-odbc=$(brew --prefix unixodbc)" 

asdf install erlang latest
asdf global erlang latest
