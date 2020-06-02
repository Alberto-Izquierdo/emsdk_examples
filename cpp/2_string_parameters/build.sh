OUTPUT_DIR="target"
rm -rf target
mkdir ${OUTPUT_DIR} >/dev/null 2>&1
emcc -std=c++17 src/test.cpp -o ${OUTPUT_DIR}/test.js -s "EXPORTED_FUNCTIONS=['_strLen']" -s "EXTRA_EXPORTED_RUNTIME_METHODS=['ccall', 'cwrap']"
cp static/index.html ${OUTPUT_DIR}/
