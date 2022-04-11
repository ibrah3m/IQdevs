gp sync-await prebuild
brew install drud/ddev/ddev	&&
gp sync-await prebuild																						
sudo apt-get update && sudo apt-get install -y xdg-utils &&
gp sync-await prebuild
ddev config --project-type=$PROJECT_TYPE  &&
gp sync-await prebuild
ddev start -y &&
gp sync-await prebuild
ddev composer install &&
gp sync-await prebuild
ddev exec "cat .env.example | sed  -E 's/DB_(HOST|DATABASE|USERNAME|PASSWORD)=(.*)/DB_\1=db/g' > .env" &&
ddev exec "php artisan migrate" &&
ddev exec "php artisan key:generate" 
gp sync-done prebuild