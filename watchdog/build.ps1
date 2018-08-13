cd watchdog

del watchdog.exe

docker build -t ejanicas/watchdog:windows . -f .\Dockerfile.win

docker create --name watchdog ejanicas/watchdog:windows cmd

& docker cp watchdog:/go/src/github.com/edujanicas/faas/watchdog/watchdog.exe .
docker rm -f watchdog
