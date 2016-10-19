# Postgres on Ubuntu

So from my ubuntu VM, i followed this: http://tecadmin.net/install-postgresql-server-on-ubuntu/#

The critical steps are:
1. installation of apt repo
```bash
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
```
2. apt-get installation
```bash
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib
```
3. Test connectivity of the postgres account (the admin account)
```bash
sudo su - postgres
psql
```
4. So to actually use it remotely, we need to edit postgresql.conf from /etc/postgresql/X.X/main/
> listen_addresses='localhost'
to
> listen_addresses='*'
5. Using the postgres account connection, create a database and a user
```sql
CREATE DATABASE mydatabase;
CREATE USER theuser WITH PASSWORD 'thepassword';
GRANT ALL PRIVILEGES ON DATABASE mydatabase to theuser;
6. Restart postgres to our changes from postgresql.conf to take effect.
```bash
sudo /etc/init.d/postgresql restart
```
7. Then remotely or better yet from pgadmin
```bash
psql -U theuser -d mydatabase -H X.X.X.X
```

