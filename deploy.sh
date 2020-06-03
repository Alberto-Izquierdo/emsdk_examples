echo "Copying files from static directory to target directory"
cp static/index.html target/
cp static/cpp/index.html target/cpp/
echo "Creating the HTML list from the tree directory"
pushd cpp >/dev/null 2>&1
LIST=""
for directory in $(ls -1); do
    echo "Adding example \"cpp/${directory}\" to list"
    LIST="${LIST}\n<li><a href="./${directory}/index.html">${directory}</a></li>"
done
echo "List built correctly"
popd >/dev/null 2>&1
sed -i "s|{to_replace}|${LIST}|g" target/cpp/index.html
