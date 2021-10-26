#this script writes stdin to a temporary file, that is then opened by nvim.
#this is very useful to use your local nvim to select parts of an output.
cat > /tmp/tmp_nvim.txt
nvim /tmp/tmp_nvim.txt
