function dirdiff() {
    # Shell-escape each path:
    DIR1=$(printf '%q' "$1"); shift
    DIR2=$(printf '%q' "$1"); shift
    nvim $@ -c "DirDiff $DIR1 $DIR2"
}
