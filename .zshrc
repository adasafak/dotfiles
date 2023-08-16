eval "$(direnv hook zsh)"

# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
   # Multi user install
   source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
elif [ -e  ~/.nix-profile/etc/profile.d/nix.sh ]; then
   # single user install
   source '~/.nix-profile/etc/profile.d/nix.sh'
fi
# End Nix

#This was for bodata
# sudo ifconfig lo0 alias 10.0.2.2
export GOPRIVATE="github.com/immuta/*"

la() {
   ls -a "$@"
}

k() {
   kubectl "$@"
}
alias config='/usr/bin/git --git-dir=/Users/ada.safak/.cfg/ --work-tree=/Users/ada.safak'
