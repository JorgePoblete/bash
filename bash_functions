# usefull bash functions

# pull branch from origin
function rebase
{
    branch=$(get_branch);
    git pull --rebase origin $branch
}

# pull branch from origin
function pull
{
    branch=$(get_branch);
    git pull origin $branch
}

# push branch 
function push 
{
    branch=$(get_branch);
    git push origin $branch
}

function get_branch
{
    git branch 2> /dev/null | grep "*" | sed "s/* //";
}

function log()
{
    git log --stat --pretty=short --graph
}
