# Wany-Project

This repository allow you to run both frontend and backend and simulate a production environment in your machine.

## Requirements

You need to have Docker and Git installed. 

## Environment

You can extend environment variables by creating a `.env.local` or/and `.env.production.local`. See the .env file inside the backend folder for all the possibilities.

## How to run

Open terminal in target directory and run:
```
git clone --recursive https://github.com/Wany-Studios/Wany-Production.git
```

Then open the project folder and run `docker-compose up -d --build`, make sure that Docker is running before executing this command.
