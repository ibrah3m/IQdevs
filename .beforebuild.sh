    rm -rf .git
    git clone ${PROJECT_REPO} temp &&
    mv temp/* . &&
    rm -rf temp &&