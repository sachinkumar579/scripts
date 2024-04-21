git clone https://github.com/sachinkumar579/test-repo.git release

cd release

git checkout develop

git checkout -b release develop

mvn versions:set -DnewVersion='0.0.2'

git commit -am "Bump version to 0.0.2"

git push origin release

gh pr create --base main --head release --title "0.0.2"