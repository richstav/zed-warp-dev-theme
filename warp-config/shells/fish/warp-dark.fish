# Warp Dark Theme - Fish Shell Configuration

# Theme settings
set -g fish_color_normal "#ffffff"
set -g fish_color_command "#00c2ff"
set -g fish_color_quote "#b4fa72"
set -g fish_color_redirection "#fefdc2"
set -g fish_color_end "#ff8ffd"
set -g fish_color_error "#ff8272"
set -g fish_color_param "#ffc4bd"
set -g fish_color_comment "#616161"
set -g fish_color_match "#d0d1fe"
set -g fish_color_selection "#00c2ff2a"
set -g fish_color_search_match "#00c2ff2a"
set -g fish_color_operator "#a5d5fe"
set -g fish_color_escape "#e5e6fe"
set -g fish_color_cwd "#00c2ff"
set -g fish_color_autosuggestion "#4a4a4a"
set -g fish_color_user "#b4fa72"
set -g fish_color_host "#00c2ff"
set -g fish_color_host_remote "#00c2ff"
set -g fish_color_cancel "#ff8272"
set -g fish_color_pager "#d0d1fe"
set -g fish_color_pager_selection "#00c2ff2a"
set -g fish_color_validation_error "#ff8272"
set -g fish_color_command_failed "#ff8272"
set -g fish_color_teals "#d0d1fe"
set -g fish_color_gold "#fefdc2"
set -g fish_color_light_blue "#a5d5fe"
set -g fish_color_orange "#ff8272"
set -g fish_color_purple "#ff8ffd"

# Background colors
set -g fish_color_normal_set "#000000"
set -g fish_color_background "#000000"

# Cursor
set -g fish_cursor_color "#00c2ff"

# Prompt
set -g fish_prompt_color_name "#ffffff"
set -g fish_prompt_color_world "#808080"
set -g fish_prompt_color_cwd "#00c2ff"
set -g fish_prompt_color_user "#b4fa72"
set -g fish_prompt_color_host "#00c2ff"
set -g fish_prompt_color_host_remote "#00c2ff"
set -g fish_prompt_color_status "#ff8272"
set -g fish_prompt_color_valid_time "#808080"
set -g fish_prompt_color_rprompt "#ff8ffd"

# Editor
set -g EDITOR "vim"
set -g VISUAL "vim"

# Functions
function ll
    ls -la $argv
end

function la
    ls -a $argv
end

function which
    type $argv[1] 2>/dev/null | head -1
end

function gac
    git add -A; and git commit -m "$argv"
end

function gst
    git status
end

function gco
    git checkout $argv
end

function gl
    git log --oneline -10
end

function gps
    git push
end

function gpl
    git pull
end

function mkcd
    mkdir -p $argv[1]; and cd $argv[1]
end

# Abbreviations
abbr -a g git
abbr -a gs git status
abbr -a ga git add
abbr -a gc git commit
abbr -a gp git push
abbr -a gl git pull
abbr -a gco git checkout
abbr -a gb git branch
abbr -a gd git diff
abbr -a gco git checkout
abbr -a ll ls -la
abbr -a la ls -la
abbr -a .. cd ..
abbr -a ... cd ../..
abbr -a .... cd ../../..

# FZF
if type -q fzf
    set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git'
    set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
    set -gx FZF_DEFAULT_OPTS '--color=bg:#000000,fg:#ffffff,hl:#00c2ff,fg+:#ffffff,bg+:#111111,hl+:#00c2ff --color=info:#a5d5fe,prompt:#00c2ff,pointer:#ff8ffd --color=marker:#b4fa72,spinner:#ff8ffd,header:#808080'
end

# Zoxide
if type -q zoxide
    zoxide init fish | source
end

# Starship prompt
if type -q starship
    starship init fish | source
end

# Set locale
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8

# History
set -gx fish_history_size 10000
set -gx fish_history_timestamp_format "%Y-%m-%d %H:%M:%S "

# Completions
fish_vi_key_bindings

# Welcome message
echo ""
echo -e " \x1b[36m\x1b[1mWarp Dark Fish\x1b[0m"
echo " Loaded: "(date '+%Y-%m-%d %H:%M:%S')
echo ""
