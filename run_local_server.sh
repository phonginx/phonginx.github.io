# kill jekyll server if it is already running
if pids=$(sudo lsof -i:4000 -t); then
    sudo kill $pids
fi
# start jeklyll server
bundle exec jekyll serve
