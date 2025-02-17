# Exercises

> Open Public Domain Exercise Dataset in JSON format

## Motivation

I'm someone who is quite into their fitness, and have tried using many different fitness apps for building and tracking custom workouts.

Most of the apps l tried had a very small list of in-built exercises, requiring me to add custom ones to their system, or just not track the exercise within the app (defeating the purpose of the app).

My hope is that this repo changes that. l want to create a complete and extensive open dataset of exercises that sits within the public domain, with the idea that eventually all fitness tracking apps can use.

Contributions are wanted, as l know this will be too much to undertake by any one person, so please visit the [contributing guidelines](https://github.com/wrkout/exercises.json/blob/master/CONTRIBUTING.md)

## Scripts

1. `npm run build:json` - creates a JSON file with all exercises
2. `npm run build:psql` - creates a SQL file for PostgreSQL to load all exercises in

## Public JSON API Service

You can use the _raw_ links served by GitHub, example:

```shell
$ curl https://raw.githubusercontent.com/wrkout/exercises.json/master/exercises/Barbell_Curl/exercise.json
```

## Generate `exercises.json`

```shell
$ npm run build:json
```

This builds an `exercises.json` file which contains all exercises in a single file.

## Generate `exercises-psql.sql`

```shell
$ npm run build:psql
$ npm run build:psql -- <table name>
```

This builds an `exercises-psql.sql` file which creates and inserts all exercises into a PostgreSQL database.

## Maintainers

[@olliejennings](https://github.com/OllieJennings)

## Add another exercise

1. Create a new folder in `/exercises` that is named one number higher than the highest numered folder.
2. Copy one of the `exercise.json` files from another exercise into the new folder.
3. Give the new exercise an ID the same as the folder name.
4. Fill in the rest of the exercise details.