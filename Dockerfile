FROM node

WORKDIR /app

# packages.json을 먼저 복사를 해서 캐싱된 모듈을 사용하게 함으로써

# 빌드 시 불필요한 설치과정을 패스하게 됨
COPY package.json .

RUN npm install

# COPY [복사 할 파일 경로] [컨테이너내에서 파일이 복사될 경로]
COPY . .

ENV REACT_APP_NAME=myName

EXPOSE 3000

CMD ["npm", "run", "start"]