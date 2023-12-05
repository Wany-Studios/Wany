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

## Preview

<img src="docs/img (1).png" alt="Change password screen">
<img src="docs/img (2).png" alt="Signin page">
<img src="docs/img (3).png" alt="Signup page">
<img src="docs/img (4).png" alt="Home page">
<img src="docs/img (5).png" alt="Email verification page">
<img src="docs/img (6).png" alt="Game upload modal">
