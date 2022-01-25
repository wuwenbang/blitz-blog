echo 'Deploy Start !' &&
cd /home/winter/blitz-app/ &&
git pull &&
docker compose -f docker-compose-prod.yml up -d &&
echo 'Deploy Succeed !'

