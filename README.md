DarkMultiPlayer-docker
======================
`Dockerfile`, `docker-compose.yml`, and configuration mapping for [Kerbal Space Program DarkMultiPlayer(DMP) MOD Server](http://d-mp.org).

[The mode source is here](https://github.com/godarklight/DarkMultiPlayer)

[The original Dockerfile was forked from wilfrem, here](https://github.com/wilfrem/DarkMultiPlayer-docker) to add some Docker paradigm updates and latest code.

The new setup has been tested against Docker 1.9.0.

Build the image
-----------
Thanks to feats of modern software engineering, you no longer need to build this image yourself. You may pull and run it from docker hub!

Simply skip to "Run Server"

If you're one of those fun users that likes to build things themselves you can use the `dev` docker-compose and run `docker-compose -f docker-compose-dev.yml build ksp-dmp` in this folder.
Then do `docker-compose -f docker-compose-dev.yml up -d ksp-dmp` to run the server instead.



Run Server
----
`docker-compose up -d ksp-dmp`


Configuration
----
If you want modify DMP server settings, you can modify files in `config/` and then restart the server for the changes to take effect. Don't worry, your universe files are mapped out to `universe/`, so you won't lose your game changes.
```
docker-compose restart ksp-dmp
```