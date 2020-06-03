isRunning=$(docker ps | grep 7080 | awk 'NR==1{print $2}')

pat="unoconv"

echo "Running: $isRunning"
if [[ $isRunning =~ $pat ]]; then
  echo "Already running"
else
  docker run --rm -d -p 7080:3000 --env-file=docker.env -v /opt/unoconv:/opt/unoconvservice/status sfoxdev/unoconv
fi
