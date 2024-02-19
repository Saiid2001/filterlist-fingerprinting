DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# if the command is manage.sh lib args... execute libs.sh args...

if [ "$1" = "lib" ]; then
    shift
    exec bash $DIR/libs.sh "$@"

# if the command is manage.sh init
elif [ "$1" = "init" ]; then
    # create src directory
    mkdir -p $DIR/../src
    echo "src directory created"
fi