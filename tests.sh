make clean
make

tests=(
"0|Enter a number: Fib(0) = 0"
"1|Enter a number: Fib(1) = 1"
"2|Enter a number: Fib(2) = 1"
"10|Enter a number: Fib(10) = 55"
"20|Enter a number: Fib(20) = 6765"
)

failed=0

for test in "${tests[@]}"; do
    input=$(echo "$test" | cut -d'|' -f1)
    expected=$(echo "$test" | cut -d'|' -f2)

    output=$(echo "$input" | ./fib)

    if [ "$output" != "$expected" ]; then
        echo "failed: input '$input' expected '$expected' but got '$output'"
        failed=1
    else
        echo "test passed"
    fi
done

if [ $failed -eq 0 ]; then
    echo "success"
else
    exit 1
fi
