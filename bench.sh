#!/bin/bash
BENCH="hyperfine -i -N -w 10 "

for dir in *; do
  if [ -d "$dir" ]; then
    # Compile command with the name
    COMPILE="mojo build ${dir}.mojo -o ${dir}.bin"
    # Generate commands to run
    COMMANDS=("python ${dir}.py")
    COMMANDS+=("mojo ${dir}.mojo")
    COMMANDS+=(${dir}.bin)
    cd "$dir"
    echo
    echo "Benchmarking $dir"
    echo "======================"
    # Compile mojo first
    $COMPILE
    # Run Benchmark with all the commands
    $BENCH "${COMMANDS[@]}"
    cd ..
  fi
done
