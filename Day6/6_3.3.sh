is_prime() {
  num=$1
  if [ $num -le 1 ]; then
    return 1
  fi
  for ((i=2; i*i<=num; i++)); do
    if [ $((num % i)) -eq 0 ]; then
      return 1
    fi
  done
  return 0
}

get_palindrome() {
  num=$1
  palindrome=0
  while [ $num -ne 0 ]; do
    remainder=$((num % 10))
    palindrome=$((palindrome * 10 + remainder))
    num=$((num / 10))
  done
  echo $palindrome
}

read -p "Enter a number: " number

is_prime $number
prime_status=$?

if [ $prime_status -eq 0 ]; then
  echo "$number is prime."
  palindrome=$(get_palindrome $number)
  echo "Its palindrome is $palindrome."

  is_prime $palindrome
  palindrome_prime_status=$?

  if [ $palindrome_prime_status -eq 0 ]; then
    echo "The palindrome ($palindrome) is also prime."
  else
    echo "The palindrome ($palindrome) is not prime."
  fi
else
  echo "$number is not prime."
fi
