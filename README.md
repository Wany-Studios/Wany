# Wany-Project

This repository allow you to run both frontend and backend and simulate a production environment in your machine.

## Requirements

You need to have Docker and Git installed.

## Environment

You need to create a `.env.local` file that you can use to extend .env. You can also use `.env.production`. See the .env file inside the backend folder for all the possibilities.

## How to run

Open terminal in target directory and run:

```
git clone --recursive https://github.com/Wany-Studios/Wany-Production.git
```

Open the project folder, execute `git pull` inside backend and frontend folder, then run `docker-compose up -d --build`. Make sure that Docker is running before executing this command.
