function emacs-server() {
    local server_name="$1"
    if [[ -z "$server_name" ]]; then
	echo "specify server name"
	return 1
    fi
    if [[ "$server_name" =~ '^\..*$' ]]; then
        echo "server name can't start with a dot"
        return 1
    fi
    emacs --eval "(setq server-name \"$server_name\")" --daemon
}
alias es=emacs-server

function emacs-client() {
    local server_name="$1"
    shift
    if [[ -z "$server_name" ]]; then
	echo "specify server name"
	return 1
    fi
    emacsclient -t -s $server_name "$@"
}
alias ec=emacs-client

function _emacs-client() {
    local state
    _arguments '1: :->server' '2: :->files'

    case $state in
    server)
        compadd $(ls /run/user/*/emacs)
	;;
    files)
	_files
	;;
    esac
}

compdef _emacs-client emacs-client
