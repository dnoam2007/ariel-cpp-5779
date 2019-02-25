DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
for folder in $@; do
    echo
    echo $folder
    pushd $folder
    $DIR/convert-to-pdf.bash
    popd
done
