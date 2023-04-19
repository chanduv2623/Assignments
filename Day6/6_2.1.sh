n=$1
i=0
result=1

while [[ $i -le $n && $result -le 256 ]]; do
  echo "2^$i = $result"
  result=$((result * 2))
  i=$((i + 1))
done
