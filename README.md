DarkMultiPlayer-docker
======================

dockerfile and bootstrap for Kerbal Space Program DarkMultiPlayer(DMP) MOD Server.

[original source is here](https://github.com/godarklight/DarkMultiPlayer)

build image
-----------

move ./dockerfile folder and run this code
```sh
docker build -t "your tag" .
```

if you want modify DMP server settings, you can modify files in ./dockerfile/DMPServerApp before building image.
./dockerfile/DMPServerApp will be included in building process.

run server
----

put ./buotstrap/DMPServerFiles into storage and run ./bootstrap.sh -t "your tag" -v "DMPServerFilesPath"


