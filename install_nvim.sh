sudo apt remove neovim
sudo apt install ninja-build gettext cmake unzip curl batcat zsh tmux clangd clang-tidy zsh-syntax-highlighting
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
ls
cd build
cpack -G DEB
# sudo dpkg -i nvim-linux64.deb
# sudo apt remove neovim
sudo dpkg -i --force-overwrite  nvim-linux64.deb
curl -sS https://starship.rs/install.sh | sh

wget https://github.com/eza-community/eza/releases/download/v0.23.4/eza_x86_64-unknown-linux-musl.zip
unzip eza_x86_64-unknown-linux-musl.zip
sudo mv eza /usr/bin
