nHeads=0
nTails=0

while [[ $nHeads -lt 11 && $nTails -lt 11 ]]; do
  flip=$(( RANDOM % 2 ))

  if [[ $flip -eq 0 ]]; then
    ((nHeads++))
    echo "Heads: $nHeads times"
  else
    ((nTails++))
    echo "Tails: $nTails times"
  fi
done

if [[ $nHeads -eq 11 ]]; then
  echo "Heads won 11 times!"
else
  echo "Tails won 11 times!"
fi
