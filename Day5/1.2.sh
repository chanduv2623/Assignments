dice_1=$(( RANDOM % 6 + 1 ))
dice_2=$(( RANDOM % 6 + 1 ))
result=$(( dice_1 + dice_2 ))

echo "Dice 1: $dice_1"
echo "Dice 2: $dice_2"
echo "Result: $result"
