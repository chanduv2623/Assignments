rndN=()

for i in {1..10}; do
  rndN+=($((RANDOM % 900 + 100)))
done

echo "Random numbers: ${rndN[*]}"

srtN=($(printf "%d\n" "${rndN[@]}" | sort -n))

echo "Sorted numbers: ${srtN[*]}"

s_smallest=${srtN[1]}
s_largest=${srtN[-2]}

echo "second Smallest: $s_smallest"
echo "second Largest: $s_largest"
