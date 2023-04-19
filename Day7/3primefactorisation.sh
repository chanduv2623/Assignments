is_prime() {
    num=$1
    if [ $num -le 1 ]; then
        echo 0
        return
    fi

    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo 0
            return
        fi
    done
    echo 1
}

read -p "Enter a number: " n

primeFact=()

while [ $(is_prime $n) -eq 0 ]; do
    for ((i=2; i<=n; i++)); do
        if [ $((n % i)) -eq 0 ] && [ $(is_prime $i) -eq 1 ]; then
            primeFact+=($i)
            n=$((n / i))
            break
        fi
    done
done

if [ $n -gt 1 ]; then
    primeFact+=($n)
fi

echo "Prime factors: ${primeFact[@]}"
