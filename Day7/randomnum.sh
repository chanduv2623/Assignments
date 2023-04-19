ran_array=()
for ((i=0; i<10; i++)); do
  ran_array[i]=$((RANDOM % 900 + 100))
done

echo "Random numbers: ${ran_array[*]}"



smallest=${ran_array[0]}
s_smallest=1000
largest=0
s_largest=0



for number in "${ran_array[@]}"; do
  if [[ $number -lt $smallest ]]; then
    s_smallest=$smallest
    smallest=$number
  elif [[ $number -lt $s_smallest && $number -ne $smallest ]]; then
    s_smallest=$number
  fi

  if [[ $number -gt $largest ]]; then
    s_largest=$largest
    largest=$number
  elif [[ $number -gt $s_largest && $number -ne $largest ]]; then
    s_largest=$number
  fi
done


echo "second smallest number: $s_smallest"
echo "second largest number: $s_largest"
