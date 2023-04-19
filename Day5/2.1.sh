min_value=1000
max_value=0

for ((i = 1; i <= 5; i++)); do
    random_value=$((RANDOM % 900 + 100))

    echo "Generated value: $random_value"

    if [ $random_value -lt $min_value ]; then
        min_value=$random_value
    fi

    if [ $random_value -gt $max_value ]; then
        max_value=$random_value
    fi
done

echo "Minimum value: $min_value"
echo "Maximum value: $max_value"
