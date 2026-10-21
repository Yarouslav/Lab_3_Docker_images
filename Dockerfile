# Базовий образ з Node.js
FROM node:18
# Робоча директорія у контейнері
WORKDIR /app
# Копіюємо package.json і package-lock.json (якщо є)
COPY package*.json ./
# Встановлюємо залежності
RUN npm install
# Копіюємо весь проєкт у контейнер
COPY . .
# Відкриваємо порт 3000
EXPOSE 3000
# Команда запуску
CMD ["npm", "start"]