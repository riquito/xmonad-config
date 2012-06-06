-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1680x1050 monitors, with the right monitor as primary
Config {
    font = "xft:Dejavu Sans Mono:pixelsize=12:antialias=true:style=bold",
    bgColor = "#002b36",
    fgColor = "#ffffff",
    position = Static { xpos = 1680, ypos = 0, width = 1560, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Weather "LIML" ["-t","<tempC>° <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","Cpu: <total>%","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","2"] 10,
        Run CpuFreq ["-t", "Freq: <cpu0>GHz", "-L", "0", "-H", "2", "-l", "lightblue", "-n","white", "-h", "red"] 50,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run CoreTemp ["-t","Temp:<core0>C","-L","40","-H","60","-l","lightblue","-n","gray90","-h","red"] 50,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "eth0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Com "/bin/date" ["'+%d %b %H:%M'"] "localDate" 600,
        --Run Volume "default" "Master" [] 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu% %cpufreq% %coretemp%  %memory%   %swap%   %eth0%   <fc=#FFFFCC>%localDate%</fc>  %LIML%"
}
