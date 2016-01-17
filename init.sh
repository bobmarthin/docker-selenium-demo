rm -rf tmp/pids
rm -rf tmp/cache
docker-compose run web rake db:create db:migrate
