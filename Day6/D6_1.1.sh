n=$1

for ((i=0; i<=n; i++)); do
  result=$((2**i))
  echo "2^$i = $result"
done
