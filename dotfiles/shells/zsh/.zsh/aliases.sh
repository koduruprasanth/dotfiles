# {{@@ header() @@}}

###############################################################################
# Common                                                                      #
###############################################################################
alias reload='source ~/.zshrc'
alias cat='bat'

###############################################################################
# Installed Programs                                                          #
###############################################################################
alias lg='lazygit'
alias dotdrop='/Users/prasantk/Library/Python/3.8/bin/dotdrop'


###############################################################################
# Python                                                                      #
###############################################################################
# Grep among .py files
alias pygrep='grep -nr --include="*.py"'

# Remove python compiled byte-code and mypy/pytest cache in either the current
# directory or in a list of specified directories (including sub directories).
function pyclean() {
    ZSH_PYCLEAN_PLACES=${*:-'.'}
    find ${ZSH_PYCLEAN_PLACES} -type f -name "*.py[co]" -delete
    find ${ZSH_PYCLEAN_PLACES} -type d -name "__pycache__" -delete
    find ${ZSH_PYCLEAN_PLACES} -depth -type d -name ".mypy_cache" -exec rm -r "{}" +
    find ${ZSH_PYCLEAN_PLACES} -depth -type d -name ".pytest_cache" -exec rm -r "{}" +
}
