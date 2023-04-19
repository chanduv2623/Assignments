read -p "Enter the array of integers (space-separated): " -a arr

n=${#arr[@]}

found=0

for ((i=0; i<n-2; i++)); do
    for ((j=i+1; j<n-1; j++)); do
        for ((k=j+1; k<n; k++)); do
            if [ $((arr[i] + arr[j] + arr[k])) -eq 0 ]; then
                echo "Triplet: ${arr[i]} ${arr[j]} ${arr[k]}"
                found=1
            fi
        done
    done
done

if [ $found -eq 0 ]; then
    echo "No triplet found"
fi
