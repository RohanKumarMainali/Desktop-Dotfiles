Config { 
  font = "xft:FiraCode Nerd Font:size=10:antialias=true",
  additionalFonts = [ "xft:FontAwesome:size=10:antialias=true" ],
  bgColor = "#1a1b26",
  fgColor = "#c0caf5",
  position = TopW L 100,
  commands = [
    Run Weather "RJTT" ["-t","<station>: <tempC>°C","-L","18","-H","25","--normal","#c0caf5","--high","#ff8b39","--low","#8bff57"] 36000,
    Run Date "<fc=#c0caf5>%A, %d %B %Y</fc> \xf073 <fc=#c0caf5>%H:%M</fc> \xf017" "date" 10,
    Run DynNetwork ["-t","<dev>: <tx>KB/s|<rx>KB/s","-L","0","-H","500","--normal","#c0caf5","--high","#ff8b39"] 10,
    Run BatteryP ["BAT0"] ["-t", "<acstatus>: <left>%", "-L", "10", "-H", "80", "-l", "#8bff57", "-n", "#ff8b39", "-h", "#ff8b39", "--", "-O", "\xf0e7", "-o", "\xf240", "-i", "\xf244"] 600,
    Run Com "bash" ["-c", "nmcli -t -f active,ssid dev wifi | egrep '^yes' | cut -d: -f2"] "wifi" 10,
    Run Com "bash" ["-c", "~/.xmonad/scripts/volume.sh"] "volume" 10,
    Run StdinReader
  ],
  sepChar = "%",
  alignSep = "}{",
  template = " %StdinReader% }{ %workspaces% %cpu% \xf11b %memory% \xf0c7 %disku% \xf108 %coretemp% %battery% %wifi% \xf1eb %brightness% \xf0c5 %volume% \xf023 %dynnetwork% %date% %RJTT%"
}

