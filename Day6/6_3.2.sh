function is_palindrome() {
  number=$1
  reverse=0
  temp=$number

  while [ $temp -gt 0 ]; do
    last_digit=$((temp % 10))
    reverse=$((reverse * 10 + last_digit))
    temp=$((temp / 10))
  done

  if [ $number -eq $reverse ]; then
    echo "$number is a palindrome"
  else
    echo "$number is not a palindrome"
  fi
}

echo "Enter a number:"
read num
is_palindrome $num
