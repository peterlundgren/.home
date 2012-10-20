# Enables 256 colors
export TERM=xterm-256color

# Configure the terminal to use solarized colorscheme.
#
# Solarized theme: http://ethanschoonover.com/solarized
#
# Adapted from these sources:
# https://gist.github.com/1397104
# https://gist.github.com/1280177
# http://xorcode.com/guides/solarized-vim-eclipse-ubuntu/
#
# SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
# --------- ------- ---- -------  ----------- ---------- ----------- -----------
# base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
# base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
# base01    #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
# base00    #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
# base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
# base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
# base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
# base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
# yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
# orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
# red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
# magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
# violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
# blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
# cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
# green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60

# Set solarized theme
export SOLARIZED_THEME="light" # "light" | "dark"

# Configure solarized only if the environment variable is set
if test $SOLARIZED_THEME
then
    # Configure colors used by ls
    if [ -e "$HOME/.dircolors" ]
    then
        eval `dircolors ~/.dircolors`
    fi

    # Set the GNOME Terminal profile to use solarized theme colors
    if test $SOLARIZED_THEME && command -v gconftool-2 >/dev/null 2>&1
    then
        # black, red, green, yellow, blue, magenta, cyan, white, brblack, brred, brgreen, bryellow, brblue, brmagenta, brcyan, brwhite
        palette="#070736364242:#D3D301010202:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#EEEEE8E8D5D5:#00002B2B3636:#CBCB4B4B1616:#58586E6E7575:#65657B7B8383:#838394949696:#6C6C7171C4C4:#9393A1A1A1A1:#FDFDF6F6E3E3"
        case "$SOLARIZED_THEME" in
            "dark")
                bg_color="#00002B2B3636"
                fg_color="#65657B7B8383"
                ;;
            "light")
                bg_color="#FDFDF6F6E3E3"
                fg_color="#838394949696"
                ;;
        esac
        gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_background" --type bool false
        gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false
        gconftool-2 --set "/apps/gnome-terminal/profiles/Default/palette" --type string "$palette"
        gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type string "$bg_color"
        gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type string "$fg_color"
    fi
fi
