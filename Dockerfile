FROM node:18-alpine

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiamos package.json
COPY package.json ./

# Instalamos dependencias
RUN npm install

# Copiamos el resto del código
COPY . .

# Puerto donde escucha nuestro servidor
EXPOSE 3000

# Comando de arranque
CMD ["npm", "start"]
