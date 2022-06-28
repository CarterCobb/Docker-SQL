# Containerize SQL Database

This small project brings up and restores a SQL database in a docker container.

> It's still under development, Features may be added or removed.
> see development notes [here]()

## Prerequisites

- Docker insalled [download link](https://www.docker.com/products/docker-desktop)
- WSL2 installed (WindowsOS Only) [download link](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)

## Running the project

Simply add the `.bak` file to the `restore_files` folder.
_You may need to update the `restore.sql` file if the database properties change_

- Run `docker-compose up -d` in the terminal cd'ed into the root dir of the project.

## Tearing down the SQL database

- Run `docker-compose down -v` in the terminal cd'ed into the root dir of the project.

## Default settings

As of now the settings are as follows:

- Runs on `localhost:1433`
- Username is `sa`
- Password is `Password.1`

## Development goals

This project has yet to be tested on a WondowsOS system. It also is failing to call the `resotre.sql` file once it spins up on MacOS. These are currently being worked on

## Additional Details

This project was created by [Carter Cobb](https://linktr.ee/cjcobb) and was intended to be used as an aid during development on a system for [Harris Local Government](https://www.harrislocalgov.com). This project is not the intellectual property or Harris Local Goverment.

© Copyright Carter Cobb 2022
