function zawarudo()
{
    time=8
    [ $# -eq 1 ] && time=$1
    if [ $time -eq 0 ]; then
        xrandr --output DP1 --brightness -1
        xrandr --output DP1 --brightness 1
        return 0
    fi

    echo "Toki wo Tomare!!"
    for i in $(seq 1.2 -0.1 -1.0) ; do
        sleep 0.001
        xrandr --output DP1 --brightness $i
    done
    elapsed=1
    while [ ! ${time} -eq 0 ]; do
        sleep 1
        if [ $time -eq 1 ]; then
            echo "${elapsed} seconds passed!"
            sleep 1
        elif [ $time -gt 1 ]; then
            rvalue=$(($RANDOM % 15))
            if [ $rvalue -lt 4 ]; then
                echo "${elapsed} seconds passed!"
            elif [ $rvalue -lt 5 ]; then
                echo "Mudamudamudamudamuda!!!"
            elif [ $rvalue -lt 6 ]; then
                echo "MUDA!!!!!"
            elif [ $rvalue -lt 7 ]; then
                echo "ROAD ROLLER!!!!!"
            elif [ $rvalue -lt 8 ]; then
                echo "WRYYYYYYYY!!!!!"
            fi
        fi
        time=$((${time} - 1))
        elapsed=$((${elapsed} + 1))
    done
    echo "Therefore time goes back!"
    for j in $(seq -1.0 0.1 1.0) ; do
        sleep 0.001
        xrandr --output DP1 --brightness $j
    done
    sleep 1
}
