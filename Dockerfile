# Stage 1: Install dependencies
FROM node:18-alpine3.15 AS dependencies

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

# Stage 2: Build the app
FROM node:18-alpine3.15 AS builder

WORKDIR /app

# Copy dependencies from the 'dependencies' stage
COPY --from=dependencies /app/node_modules ./node_modules

COPY . .

ENV PATH /app/node_modules/.bin:$PATH

COPY tsconfig.json ./

RUN npm run build

# Stage 3: Production image
FROM node:18-alpine3.15 AS runner

WORKDIR /usr/src/app

COPY package.json package-lock.json ./
COPY --from=builder /app/dist ./dist

CMD [ "npm", "start" ]