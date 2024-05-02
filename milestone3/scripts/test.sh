search_and_parse() {
    local input_dir="$1"
    local output_dir="$2"
    local parser="../src/parser -input"
    
    # Create the output directory structure if it doesn't exist
    mkdir -p "$output_dir${input_dir#$1}"

    for item in "$input_dir"/*; do
        if [ -f "$item" ] && [ "${item##*.}" = "py" ]; then
            echo
            echo "Testing $item"
	    	output_file="${item/#$1/$2}"
	    	output_folder="${output_file%.py}"
	    	mkdir "../out/$output_folder"
            output_file_tac="${output_file%.py}.tac"
            output_file_x86="${output_file%.py}.S"
            output_file_exec="${output_file%.py}.exec"
            output_file_stdout="${output_file%.py}.out"
            # echo "$parser" "$item" "-output_x86" "$output_file_x86" "-output_tac" "$output_file_tac"
            $parser "$item" "-output_x86" "$output_file_x86" "-output_tac" "$output_file_tac"
	    	mv *.csv "../out/$output_folder"
			gcc -o "$output_file_exec" "$output_file_x86" 
			./"$output_file_exec" &> "$output_file_stdout"
	    	mv "$output_file_x86" "../out/$output_folder" 
	    	mv "$output_file_exec" "../out/$output_folder" 
	    	mv "$output_file_tac" "../out/$output_folder" 
	    	mv "$output_file_stdout" "../out/$output_folder" 
            echo "Made $output_file_x86, compiled and executed it. Result in $output_file_stdout"
            echo
        fi
    done
}

cd ../src
make clean
make
search_and_parse "../tests" "../out"
make clean
