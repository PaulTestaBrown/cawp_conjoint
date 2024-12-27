# Loop through all .jpg files
for file in *.jpg; do
    # Check if the file contains '_wf'
    if [[ "$file" =~ (.*)_wf ]]; then
        # Extract the part before '_wf'
        new_name="${BASH_REMATCH[1]}"
        
        # Process the file with sips
        sips --resampleWidth 550 \
             --setProperty dpiHeight 300 \
             --setProperty dpiWidth 300 \
             "$file" \
             --out "${new_name}_wf_larger.png"
        
        echo "Processed '$file' → '${new_name}_wf_larger.png'"
    fi
done
