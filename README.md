DarkMultiPlayer-docker
======================
`Dockerfile`, `docker-compose.yml`, and configuration mapping for [Kerbal Space Program DarkMultiPlayer(DMP) MOD Server](http://d-mp.org).

[The mode source is here](https://github.com/godarklight/DarkMultiPlayer)

[The original Dockerfile was forked from wilfrem, here](https://github.com/wilfrem/DarkMultiPlayer-docker) to add some Docker paradigm updates and latest code.

The new setup has been tested against Docker 1.9.0.

Build the image
-----------
Run `docker-compose build ksp-dmp` in this folder.



Run Server
----
`docker-compose up -d ksp-dmp`


Configuration
----
Due to the way DMP messes with file handlers, if you want modify DMP server settings, you can modify files in `config/` and then rebuild and recreate the server for the changes to take effect. Don't worry, your universe files are mapped out to `universe/`, so you won't lose your game changes.
```
docker-compose build ksp-dmp
docker-compose up -d ksp-dmp
```