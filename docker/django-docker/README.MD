# Docker Django Template

## Included:
- Python (version:`3.8.2`) container
- Postgresql (`latest`/unspecified) container
- `tty` is set to `true`
- `stdin_open` is set to `true`

## Note:
- Python container is set to expose port `8000`
- Python container is running Django's `server` on port `8000`
- `stdin_open` and `tty` are set to open to allow for the use of `pdb` module when debugging django views
 
## Set Up:
### Prerequisites:
The current set up has a couple of assumptions being made.
1. You already ran the django `startproject` and `startapp` commands to create the django scaffolding.
2. You have a `requirements.txt`
### Guidence/Thinking:
**READ ALL OF THIS BEFORE DOING ANYTHING WITH THE FILES**
1. In the `docker-compose.yml`: under `backend`, the `build` param is set to "`.`". This means that `docker-compose` is going to be looking for the `Dockerfile` **in the same directory as the `docker-compose.yml`**.
2. In the `docker-compose.yml`: under `backend` then under `volumes`, we have `./:/backend`. `docker-compose` is going to translate the directory in which the `docker-compose.yml` to become a mounted volume named `backend`. Knowing this you'd want to maybe adjust that path (the `./` bit), so that it points to your `my_site` and `my_app` directory so that they become exposed as the `/backend` for the container.
3. In the `Dockerfile`, we have a command in their as `COPY requirements.txt requirements.txt`. Think of this as the `cp` command in linux/unix. So in the cookie-cutter the `Dockerfile` is expecting to be on the same level as the `requirements.txt` in the first arg/parameter. If that's not the case that should be changed so it's `COPY directory/path/requirements.txt requirements.txt`
4. Expanding on point 3, before the `COPY` command notice the `WORKDIR` command. The `WORKDIR` command is setting the directory in which will be treated as the `base`/`home` for running the commands. So this is the same as being actually in the `backend` directory, meaning when we do the `COPY` command it will be copying the `requirements.txt` into the `backend`

Example Structure:

![Picture of the example structure of the project](https://github.com/cmhedrick/Tools/blob/master/docker/django-docker/structure.png)

## Closing:
You should pretty much be able to just DROP these files into a basic directory of any conventionally created Django project and shouldn't have an issue. :^)
