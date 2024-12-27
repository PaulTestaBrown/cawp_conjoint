# Loop through all .jpg files
for file in *.jpg; do
    # Check if the file contains '_bm'
    if [[ "$file" =~ (.*)_bm ]]; then
        # Extract the part before '_bm'
        new_name="${BASH_REMATCH[1]}"
        
        # Process the file with sips
        sips --resampleWidth 200 \
             --setProperty dpiHeight 300 \
             --setProperty dpiWidth 300 \
             "$file" \
             --out "${new_name}_bm_smaller.png"
        
        echo "Processed '$file' → '${new_name}_bm_smaller.png'"
    fi
done
