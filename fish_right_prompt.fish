function fish_right_prompt
    
    set -l date (set_color brgrey)(date "+%T")(set_color normal)

    set -l duration "$cmd_duration$CMD_DURATION"
    if test $duration -gt 100
        set -l seconds (math $duration / 1000)
        set -l hours (math -s0 $seconds / 3600)
        set -l minutes (math -s0 "($seconds % 3600) / 60")
        set -l secs (math -s0 $seconds % 60)
        
        set duration ""
        if test $hours -gt 0
            set duration "$hours"h" $minutes"m" $secs"s
        else if test $minutes -gt 0
            set duration "$minutes"m" $secs"s
        else
            set duration "$secs"s
        end
    else
        set duration
    end

    set_color normal
    string join " " -- $duration $date
end
