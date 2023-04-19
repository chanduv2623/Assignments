year=$1

if [ $((year % 4)) -eq 0 ]; then
  if [ $((year % 100)) -ne 0 -o $((year % 400)) -eq 0 ]; then
    echo "Leap Year"
  else
    echo "Not a Leap Year"
  fi
else
  echo "Not a Leap Year"
fi
