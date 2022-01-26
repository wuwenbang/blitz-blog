## Deploy

```
docker-compose -f docker-compose-prod.yml up -d
```

## Develop

```
rm -rf db/migration
docker-compose -f docker-compose-dev.yml up -d
blitz prisma migrate dev
```

- 自动部署

```bash
ssh winter@mars "sh /home/winter/blitz-blog/bin/deploy.sh"
ssh winter@mars 'bash -s' < bin/deploy.sh
```

## Commit & Push

```
git commit -m "message" --no-verify
git push --no-verify
```
