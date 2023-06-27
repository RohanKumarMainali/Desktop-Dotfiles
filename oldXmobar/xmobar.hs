Config { 
  font = "xft:FiraCode Nerd Font:size=10:antialias=true"
  additionalFonts = [ "xft:FontAwesome:size=10:antialias=true" ]
  bgColor = "#1a1b26"
  fgColor = "#c0caf5"
  position = TopW L 100
  commands = [
    Run Weather "RJTT" ["-t","<station>: <tempC>°C","-L","18","-H","25","--normal","#c0caf5","--high","#ff8b39","--low","#8bff57"] 36000
    Run Date "<fc=#c0caf5>%A, %d %B %Y</fc> <fn=1></fn> <fc=#c0caf5>%H:%M</fc> <fn=1></fn>" "date" 10
    Run DynNetwork ["-t","<dev>: <tx>KB/s|<rx>KB/s","-L","0","-H","500","--normal","#c0caf5","--high","#ff8b39"] 10
    Run BatteryP ["BAT0"] ["-t", "<acstatus>: <left>%", "-L", "10", "-H", "80", "-l", "#8bff57", "-n", "#ff8b39", "-h", "#ff8b39", "--", "-O", "<fn=1></fn>", "-o", "<fn=1></fn>", "-i", "<fn=1></fn>"] 600
    Run DiskU [("/", "<usedp>%")] [] 60
    Run Memory ["-t","<usedratio>%"] 10
    Run MultiCpu ["-t","<total0>% <total1>% <total2>% <total3>%"] 10
    Run CoreTemp ["-t","<core0>°C <core1>°C <core2>°C <core3>°C"] 50
    Run StdinReader
    Run Com "bash" ["-c", "~/.xmonad/scripts/wifi-signal.sh"] "wifi" 10
    Run Com "bash" ["-c", "~/.xmonad/scripts/brightness.sh"] "brightness" 10
    Run Com "bash" ["-c", "~/.xmonad/scripts/volume.sh"] "volume" 10
  ]
  , sepChar = "%"
  , alignSep = "}{"
  , template = " %StdinReader% }{ %cpu% <fn=1></fn> %memory% <fn=1></fn> %disku% <fn=1></fn> %coretemp% %battery% %wifi% <fn=1></fn> %brightness% <fn=1></fn> %volume% <fn=1></fn> %dynnetwork% %date% %RJTT%"
}
