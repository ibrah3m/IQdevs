    gp sync-await beforebuild &&
    rm -rf .git &&
    git clone ${PROJECT_REPO} temp &&
    mv temp/{,.}* . &&
    rm -rf temp  &&
    gp sync-done beforebuild 