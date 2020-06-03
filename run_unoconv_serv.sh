docker run -d -p 7080:3000 --env-file=docker.env -v /opt/unoconv:/opt/unoconvservice/status --name unoconv sfoxdev/unoconv
