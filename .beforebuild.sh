rm -rf .git &&

# add condition check variable exist or not if not create fake config.yml
git clone ${PROJECT_REPO} temp &&
find temp -maxdepth 1 -mindepth 1 -print0 | xargs -0 -I {} mv {} . &&
rm -rf temp  &&
ddev config --project-type=$PROJECT_TYPE  
