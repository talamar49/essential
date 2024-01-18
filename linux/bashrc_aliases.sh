# ****************************
# * aliases                  *
# ****************************

# **************** infinity aliases

# gec compilation aliases: c89, c99, debug mode, release mode
alias gd='gcc -ansi -pedantic-errors -Wall -Wextra -g'
alias gc='gcc -ansi -pedantic-errors -Wall -Wextra -DNDEBUG -O3'
alias gd9='gcc -std=c99 -pedantic-errors -Wall -Wextra -g'
alias gc9='gcc -std=c99 -pedantic-errors -Wall -Wextra -DNDEBUG -O31'
#
# Valgrind alias
alias vlg='valgrind --leak-check=yes --track-origins=yes'

# ***************** my aliases
alias infinitydir="cd ~/Desktop/Personal/study/infinity_labs/"
alias personaldir="cd ~/Desktop/Personal"
alias gstat="git status --short"
alias coredump="sudo sysctl -w kernel.core_pattern=core.%p.%s.%c.%d.%P;ulimit -c unlimited;echo ulimit -c unlimited "

