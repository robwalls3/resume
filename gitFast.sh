source ./bash.env

$MESSAGE = $1

git add --all
git commit -am "[GitFast Update] Message: $MESSAGE"
git push -u $GITHUB_USER master
