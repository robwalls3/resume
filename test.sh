isRunning=$(docker ps | grep 7080 | awk 'NR==1{print $2}')
source ./bash.env

pat="unoconv"

echo "Running: $isRunning"
if [[ $isRunning =~ $pat ]]; then
  echo "Already running"
else
  docker run --rm -network jenkins_network -d -p 7080:3000 --env-file=docker.env -v /opt/unoconv:/opt/unoconvservice/status sfoxdev/unoconv
fi
