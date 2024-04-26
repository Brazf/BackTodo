FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

# Instala todas as dependências, inclusive as de desenvolvimento
RUN npm install

# Copia os arquivos de schema do Prisma
COPY prisma ./prisma

# Gera o cliente Prisma
RUN npx prisma generate

ENV DATABASE_URL="mysql://root:todo92258823823@34.122.31.82:3306/todo"

COPY . .

EXPOSE 3003

CMD ["node", "index.js"]
