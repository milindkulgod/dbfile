Docker command to run container for this folder.

For Windows.

TIP: Don't share passwords in Git. This is just for practice! -->

Windows
docker run --name simplepg --mount type=bind,source=$(pwd),target=/docker-entrypoint-initdb.d -p 5432:5432 -e POSTGRES_PASSWORD="Pa33W0rd" -d postgres

Mac/Linux
docker run --name simplepg --mount type=bind,source=$(pwd),target=docker-entrypoint-initdb.d -p 5432:5432 -e POSTGRES_PASSWORD="Pa33W0rd" -d postgres