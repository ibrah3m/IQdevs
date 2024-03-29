# brew install drud/ddev/ddev	&&																						
sudo apt-get update && sudo apt-get install -y xdg-utils &&
# ddev config --project-type=$PROJECT_TYPE  &&
# ddev start -y &&
ddev composer install &&
ddev exec "cat .env.example | sed  -E 's/DB_(HOST|DATABASE|USERNAME|PASSWORD)=(.*)/DB_\1=db/g' > .env" &&
ddev exec "php artisan migrate" &&
ddev exec "php artisan key:generate"  
