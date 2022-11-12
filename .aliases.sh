alias dotfiles='git --git-dir=$HOME/.config.git --work-tree=$HOME'

mpvb()
{
    nohup mpv $@ &> /dev/null &
}
