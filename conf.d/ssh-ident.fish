set __ssh_ident_fish_bin ~/.config/fisherman/ssh-ident/ssh-ident

[ ! -d ~/bin ]; and mkdir -p $HOME/bin
set fish_user_paths $HOME/bin $fish_user_paths

function create_symlink
    if not test -L $HOME/bin/$argv
    echo "ln -s $__ssh_ident_fish_bin $HOME/bin/$argv"
        ln -s $__ssh_ident_fish_bin  $HOME/bin/$argv
    end
end

create_symlink ssh
create_symlink scp
create_symlink sftp
