## Deploy

```
docker compose -f docker-compose-prod.yml up -d
```

## Develop

```
rm -rf db/migration
docker-compose -f docker-compose-dev.yml up -d
blitz prisma migrate dev.
```
