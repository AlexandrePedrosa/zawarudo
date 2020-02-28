function zawarudo()
{
    outputs=$(xrandr | grep " connected" | cut -f1 -d " ")
    echo "Toki wo Tomare!!"
    for i in $(seq 1.2 -0.1 -1.0) ; do
        sleep 0.001
        for output in $outputs; do
            xrandr --output $output --brightness $i
        done
    done
    time=8
    elapsed=1
    [ $# -eq 1 ] && time=$1
    while [ ! ${time} -eq 0 ]; do
        sleep 1
        if [ $time -eq 2 ]; then
            echo "${elapsed} seconds passed!"
        elif [ $time -gt 2 ]; then
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
        for output in $outputs; do
            xrandr --output $output --brightness $j
        done
    done
    sleep 1
}
export zawarudo
