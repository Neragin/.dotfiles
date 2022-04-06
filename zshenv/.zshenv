typeset -U PATH path
# Other XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Doesn't seem to work

# Disable files
export LESSHISTFILE=-

# Fixing Paths
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export GOPATH="$XDG_DATA_HOME"/go
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ZDOTDIR=$HOME/.config/zsh
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export DVDCSS_CACHE="$XDG_DATA_HOME"/dvdcss
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export LEIN_HOME="$XDG_DATA_HOME"/lein
export KDEHOME="$XDG_CONFIG_HOME"/kde
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME"/notmuch/notmuchrc
export NMBGIT="$XDG_DATA_HOME"/notmuch/nmbug
export ZSHZ_DATA="$XDG_DATA_HOME"/z
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export LEIN_HOME="$XDG_DATA_HOME"/lein
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export SSB_HOME="$XDG_DATA_HOME"/zoom
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export ZSHZ_CASE=smart
export BROWSER=firefox-developer-edition
export JAVA_HOME="/usr/lib/jvm/java-15-openjdk"

export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc", export PSQL_HISTORY="$XDG_STATE_HOME/psql_history", export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass", export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"
export FZF_DEFAULT_OPTS='--color=bg+:#302D41,bg:#1E1E2E,spinner:#F8BD96,hl:#F28FAD --color=fg:#D9E0EE,header:#F28FAD,info:#DDB6F2,pointer:#F8BD96 --color=marker:#F8BD96,fg+:#F2CDCD,prompt:#DDB6F2,hl+:#F28FAD'
