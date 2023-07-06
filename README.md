## Description Project

We want to create a website for a music festival. On this website, we can see a line-up of artist showcased at the festival and acces informations on each artits obtained through the spotify API. There will be the possibility to search for artist by genre or several filters.

## LINEUP

Stage 1:
Armin van Buuren - Calvin Harris - Hardwell - Illenium -
Kygo - Martin Garrix - Nicky Romero - Quintino - Skrillex - Tiesto

Stage 2:
Afrojack - Benny Benassi - Jax Jones - Paul Kalkbrenner - Disclosure -
Excision - Deadmau5 - Dr Peacock - Charlotte de White - Dj Snake

Stage 3:
Dash Berlin - Nora En Pure - Marshmello - Zedd - Alesso - Major Lazer -
The Chainsmokers - Sickick - Deorro - Timmy Trumpet -

Stage 4:
Sound of Legend - Da Tweekaz - Sub Zero Project - R3hab - Ummet Ozcan -
Les Gordon - NTO - NHYX - ALLE Farben - Marcapasos

## Concept

This template is meant to serve as a foundation for every P2/P3 following the React-Express-MySQL stack, as learned in Wild Code School.
It's pre-configured with a set of tools which'll help students produce industry-quality and easier-to-maintain code, while staying as simple as possible to use.

## Setup & Use

### Windows users

Be sure to run these commands in a git terminal to avoid [issues with newline formats](https://en.wikipedia.org/wiki/Newline#Issues_with_different_newline_formats):

```
git config --global core.eol lf
git config --global core.autocrlf false
```

### Project Initialization

- In VSCode, install plugins **Prettier - Code formatter** and **ESLint** and configure them
- Clone this repo, enter it
- If you are using `yarn` or `pnpm`, adapt the `config/cli` in `package.json`
- Run command `npm install`
- _NB: To launch the backend server, you'll need an environment file with database credentials. You'll find a template one in `backend/.env.sample`_

### Available Commands

- `migrate` : Run the database migration script
- `dev` : Starts both servers (frontend + backend) in one terminal
- `dev-front` : Starts the React frontend server
- `dev-back` : Starts the Express backend server
- `lint` : Runs validation tools, and refuses unclean code (will be executed on every _commit_)
- `fix` : Fixes linter errors (run it if `lint` growls on your code !)

## FAQ

### Tools

- _Concurrently_ : Allows for several commands to run concurrently in the same CLI
- _Husky_ : Allows to execute specific commands that trigger on _git_ events
- _Vite_ : Alternative to _Create-React-App_, packaging less tools for a more fluid experience
- _ESLint_ : "Quality of code" tool, ensures chosen rules will be enforced
- _Prettier_ : "Quality of code" tool as well, focuses on the styleguide
- _ Airbnb Standard_ : One of the most known "standards", even though it's not officially linked to ES/JS
- _Nodemon_ : Allows to restart the server everytime a .js file is udated

### Deployment

For deployment, you have to go to `secrets` → app `actions` on the github repo to insert via `New repository secret` :

- CAPROVER_BACK_APPNAME : name app on caprover
- CAPROVER_FRONT_APPNAME : name app on caprover
- CAPROVER_PASSWORD : password caprover
- CAPROVER_SERVER : link of domain
