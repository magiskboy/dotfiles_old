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
