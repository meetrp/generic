##
# Main bashrc script
#
# The main bashrc script that is being included by the 'system' bashrc script.
# Internally this script will import other support scripts to achieve its
# purpose.
#
# @author       Rp <rp@meetrp.com>
# @category     Shell script
# @package      bashrc
# @date         1/Mar/2019
# @license      <<Check LICENSE file for details>>
##

# -- includes
. ${HOME_DOTFILES_DIR}/common.fn
. ${HOME_DOTFILES_DIR}/generic.fn
. ${HOME_DOTFILES_DIR}/code.fn
. ${HOME_DOTFILES_DIR}/git.fn

# -- final section
__find_os_type

# generic prefs
__set_prompt
__set_generic_aliases
__set_generic_options
__set_ls_aliases

# language prefs
__set_editor_aliases
__set_clang_aliases
__set_make_aliases

# source control prefs
__set_git_aliases
__set_git_completions
__download_dependent_git_packages
__set_git_prompt

# advanced prefs
__set_container_aliases
__set_project_aliases

# gpg installations
__download_github_web_gpg
__import_gpg_keys
__start_ssh_agent

# All the last ;-)
screenfetch
