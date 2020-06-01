echo "Building cpp examples"
cp static/index.html target/
cp static/cpp/index.html target/cpp/
pushd cpp >/dev/null 2>&1
LIST=""
for directory in $(ls -1); do
    cd ${directory}
    cp -r target ../../target/cpp/${directory}/
    LIST="${LIST}\n<a href="./${directory}/index.html">${directory}</a>"
    cd ..
done
echo "Examples built correctly"
popd >/dev/null 2>&1
echo $(pwd)
sed -i "s|{examples}|${LIST}|g" target/cpp/index.html