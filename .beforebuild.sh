rm -rf .git &&
git clone ${PROJECT_REPO} temp &&
mv temp/.* temp/* . &&
rm -rf temp  
