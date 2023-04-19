declare -A dice

while true; do
  roll=$((1 + RANDOM % 6))

  ((dice[$roll]++))

  for i in {1..6}; do
    if [[ ${dice[$i]} -ge 10 ]]; then
      echo "Number $i reached 10 times"
      break 2
    fi
  done
done

max_num=1
min_num=1
for i in {2..6}; do
  if [[ ${dice[$i]} -gt ${dice[$max_num]} ]]; then
    max_num=$i
  fi
  if [[ ${dice[$i]} -lt ${dice[$min_num]} ]]; then
    min_num=$i
  fi
done

echo "Dice rolls count:"
for i in {1..6}; do
  echo "Number $i: ${dice[$i]}"
done
echo "The number that reached the maximum times is: $max_num (${dice[$max_num]} times)"
echo "The number that reached the minimum times is: $min_num (${dice[$min_num]} times)"
