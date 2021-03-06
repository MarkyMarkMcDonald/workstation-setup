function git_prompt_info {
  git_prompt_vars
  GIT_DUET_INITIALS=$(echo $(git config --get-regexp ^duet.env.git-.*-name | sed -e 's/^.*-name //' | tr 'A-Z' 'a-z' | sed -e 's/\([a-z]\)[^ +]*./\1/g' ) | sed -e 's/ /+/')
  GIT_PAIR=${GIT_DUET_INITIALS:-`git config user.initials | sed 's% %+%'`}
  echo -e " $GIT_PAIR$SCM_PREFIX$SCM_BRANCH$SCM_STATE$SCM_SUFFIX"
}
