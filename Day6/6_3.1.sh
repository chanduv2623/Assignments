echo "Select the conversion:"
echo "F. Celsius to Fahrenheit"
echo "C. Fahrenheit to Celsius"
read -p "Enter your choice (F or C): " choice

case $choice in
  F|f)
    read -p "Enter temperature in Celsius (0 to 100): " degC
    if [ $degC -ge 0 ] && [ $degC -le 100 ]; then
      degF=$(( (degC * 9 / 5) + 32 ))
      echo "$degC°C is equal to $degF°F"
    else
      echo "Invalid temperature. Please enter a value between 0 and 100."
    fi
    ;;
  C|c)
    read -p "Enter temperature in Fahrenheit (32 to 212): " degF
    if [ $degF -ge 32 ] && [ $degF -le 212 ]; then
      degC=$(( (degF - 32) * 5 / 9 ))
      echo "$degF°F is equal to $degC°C"
    else
      echo "Invalid temperature. Please enter a value between 32 and 212."
    fi
    ;;
  *)
    echo "Invalid choice. Please enter F or C."
    ;;
esac
