declare -a months

for i in {1..50}; do
    month=$((1 + RANDOM % 12))
    year=$((92 + RANDOM % 2))
    birthdate="$month/$year"
    months+=("$birthdate")
done

declare -A same_month
for month in "${months[@]}"; do
    if [[ -v same_month[$month] ]]; then
        same_month[$month]=$((same_month[$month] + 1))
    else
        same_month[$month]=1
    fi
done

echo "Birthdays by month:"
for month in "${!same_month[@]}"; do
    count=${same_month[$month]}
    echo " - $month: $count individuals"
done
