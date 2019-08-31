function hl() {
    if [[ $1 == "-h" ]] || [[ $1 == "--help" ]] || [[ -z $1 ]]; then
        echo "Highlight script for command line"
        echo "hl [<filename>] [<extension>]"
    else
        FILE=$1
        if [[ -n $2 ]]; then
            ext=$2
        else
            ext="${FILE##*.}"
        fi
        cat $FILE | pygmentize -l $ext | less
    fi
}

function format_ls() {
    if [[ ${uname} != "linux" ]]; then
        return
    fi
    SAVEIFS=$IFS
    IFS=$(echo -en "\n\b")
    for file in $(ls -h)
    do
        stat --printf="%A|%h|%U|%G|%s" $file
        mod_epoch=$(stat --format="%Y" $file)
        mod_month=$(date -d @$mod_epoch +"%b")
        mod_day=$(date -d @$mod_epoch +"%d")
        mod_time=$(date -d @$mod_epoch +"%H:%M")
        printf "|%s %s %s|%s\n" $mod_month $mod_day $mod_time $file
    done
    IFS=$SAVEIFS
}

function bls() {
    if [[ ${uname} != "linux" ]]; then
        return
    fi
    local VAR="Permissions|Link|Owner|Group|Size|Modified|Name"
    if [[ -n $1 ]]; then
        cd $1
        (echo -e "$VAR" && format_ls) | column -s "|" -c 6 -t 
        cd -
    else
        (echo -e "$VAR" && format_ls) | column -s "|" -c 6 -t 
    fi
}

function geo() {
    IP=`curl -s https://ipinfo.io/ip`
    JSON=`curl --connect-timeout 5 -s https://ipvigilante.com/${IP}`
    CITY=`python -c "
import json
try:
    data = json.loads('${JSON}')
    print(data['data']['city_name'])
except:
    pass
    "`
    echo $CITY
}

function get_pyenv_version() {
    python -V 2>&1 | sed 's/.* \([0-9]\).\([0-9]\)\(.*\)/\1.\2\3/'
}

function is_background_job() {
    if [[ ! -z `jobs` ]]; then
        echo '*'
    fi
}
