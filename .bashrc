#エイリアス設定
alias ev='open -a evernote'
alias mi='open -a mi'
alias grep='grep --color' 
alias it='ithief'
alias ls='ls -G'

#historyに実行時刻表示
HISTTIMEFORMAT='%Y/%m/%d %T ' 

function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=9999

#history記録除外
HISTIGNORE=ls:history:pwd
