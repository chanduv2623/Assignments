n=$1
prime=1

if ((n <= 1)); then
  prime=0
else
  for ((i=2; i*i<=n; i++)); do
    if ((n % i == 0)); then
      prime=0
      break
    fi
  done
fi

if ((prime == 1)); then
  echo "Prime"
else
  echo "Not Prime"
fi
