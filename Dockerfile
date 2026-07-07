FROM node:20-alpine #Perdor imazhin baze Node.js versioni 20, alpine

WORKDIR /app # Cakton direktorin brenda kontejnerit si app

COPY package*.json ./ # Kopjon package.json ne kontejner

RUN npm install  # Instalo paketat qe i duhen projektit 

COPY . .  # kopjon kodin e appit ne konteiner

EXPOSE 8080 # porti i appit

CMD ["npm", "start"]  # nis serverin kur niset konteineri