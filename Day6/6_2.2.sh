low=1
high=100

while [[ $low -le $high ]]; do
  mid=$(( (low + high) / 2 ))
  echo "Is your number $mid?"
  read response

  if [[ $response == "yes" ]]; then
    echo "Your magic number is $mid!"
    break
  elif [[ $response == "greater" ]]; then
    low=$((mid + 1))
  elif [[ $response == "lesser" ]]; then
    high=$((mid - 1))
  else
    echo "Invalid input, please enter 'yes', 'greater' or 'lesser'."
  fi
done

