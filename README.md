# Containerize SQL Database

This small project brings up and restores a SQL database in a docker container.

> It's still under development, Features may be added or removed.
> see development notes [here](https://github.com/CarterCobb/Docker-SQL#development-goals)

## Prerequisites

- Docker insalled [download link](https://www.docker.com/products/docker-desktop)
- WSL2 installed (WindowsOS Only) [download link](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)
  - You may need to open `Turn Windows Features On or Off` from the start menu and turn on these two items:
    - `Virtual Machine Platform.`
    - `Windows Subsystem for Linux`
    - `Hyper-V`

## Running the project

Simply add the `.bak` file to the `restore_files` folder.
_You may need to update the `restore.sql` file if the database properties change_

The project is currently setup to run on WindowsOS. To change to MacOS, simply change all instances of `${*_WIN}` to `${*_MAC}` in [`docker_compose.yml`](https://github.com/CarterCobb/Docker-SQL/blob/master/docker-compose.yml)

- Run `docker-compose up -d` in the terminal cd'ed into the root dir of the project.

## Tearing down the SQL database

- Run `docker-compose down -v` in the terminal cd'ed into the root dir of the project.

## Default settings

As of now the settings are as follows:

- Runs on `localhost:1433`
- Username is `sa`
- Password is `Password.1`

## Development Notes

This project has yet to be tested on a WindowsOS system. It also is failing to call the `restore.sql` file once it spins up on MacOS. These are currently being worked on.

If all else fails, spin up the container and run the contents of [`restore.sql`](https://github.com/CarterCobb/Docker-SQL/blob/master/restore_files/restore.sql) in the database after connecting to it in SQL Server.

## Additional Details

This project was created by [Carter Cobb](https://linktr.ee/cjcobb) and was intended to be used as an aid during development on a system for [Harris Local Government](https://www.harrislocalgov.com). This project is not the intellectual property of Harris Local Goverment.

© Copyright Carter Cobb 2022
