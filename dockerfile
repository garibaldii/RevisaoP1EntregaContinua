# Use uma imagem do Node.js como base
FROM node:18

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o package.json e o package-lock.json
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante da aplicação
COPY . .


# Exponha a porta que a aplicação vai usar
EXPOSE 4000

# Comando para iniciar a aplicação
CMD ["node", "server.js"]
