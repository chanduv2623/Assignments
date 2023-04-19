n=$1
sum=0
precision=1000

for ((i=1; i<=n; i++)); do
  sum=$((sum + precision/i))
done

intN=$((sum / precision))
fraN=$((sum % precision))
echo "Harmonic Number: $intN.$fraN"
