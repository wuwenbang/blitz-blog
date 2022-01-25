echo 'Deploy Start !' &&
cd /home/winter/app/ &&
git pull &&
docker compose -f docker-compose-prod.yml up -d &&
echo 'Deploy Succeed !'

