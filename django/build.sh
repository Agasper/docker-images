#/bin/sh

cd ../ubuntu-base
./build.sh
cd ../django
docker build -t agasper/ubuntu-django .