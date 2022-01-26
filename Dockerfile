FROM node:16

ARG DATABASE_URL=postgresql://winter@db:5432/blog
ARG PORT=3000
ENV DATABASE_URL ${DATABASE_URL}
WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./
COPY db/ ./db/
RUN yarn install --frozen-lockfile
RUN npx prisma generate 

COPY . .
RUN yarn build

EXPOSE ${PORT}

CMD yarn start
