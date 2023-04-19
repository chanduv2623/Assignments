sum=0
count=5

for ((i=1; i<=count; i++)); do
  random_number=$(( RANDOM % 90 + 10 ))
  echo "Random number $i: $random_number"
  sum=$(( sum + random_number ))
done

average=$(( sum / count ))

echo "Sum: $sum"
echo "Average: $average"
