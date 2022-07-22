function getFinalRedirect {
    local url=$1
    while true; do
        nextloc=$( curl -s -I $url | grep ^Location: )
        if [ -n "$nextloc" ]; then
            url=${nextloc##Location: }
        else
            break
        fi
    done

    echo -n $url
}

for v in "$@"
do
	echo $(getFinalRedirect $v)
done
