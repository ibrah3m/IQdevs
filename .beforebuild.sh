 
    rm -rf .git &&
    git clone ${PROJECT_REPO} temp &&
    gp sync-done gitclone &&
    gp sync-await gitclone &&
    mv temp/{,.}* . &&
    rm -rf temp  
