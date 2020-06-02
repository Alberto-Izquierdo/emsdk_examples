rm -rf target >/dev/null 2>&1
mkdir -p target/cpp
echo "Building cpp examples"
pushd cpp >/dev/null 2>&1
for directory in $(ls -1); do
    echo "Building example \"${directory}\""
    cd ${directory}
    ./build.sh
    cp -r target ../../target/cpp/${directory}/
    cd ..
done
echo "Examples built correctly"
popd >/dev/null 2>&1
