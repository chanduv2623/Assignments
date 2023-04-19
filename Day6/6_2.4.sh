start_amount=100
goal=200
total_bets=0
wins=0

while [[ $start_amount -gt 0 && $start_amount -lt $goal ]]; do
  bet=$(( RANDOM % 2 ))

  if [[ $bet -eq 1 ]]; then
    ((start_amount++))
    ((wins++))
  else
    ((start_amount--))
  fi
  ((total_bets++))
done

echo "Total bets: $total_bets"
echo "Wins: $wins"

if [[ $start_amount -eq $goal ]]; then
  echo "Gambler reached the goal of Rs 200!"
else
  echo "Gambler went broke!"
fi

