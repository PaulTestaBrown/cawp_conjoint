# Loop through all .jpg files
for file in *.jpg; do
    # Check if the file contains '_wm'
    if [[ "$file" =~ (.*)_wm ]]; then
        # Extract the part before '_wm'
        new_name="${BASH_REMATCH[1]}"
        
        # Process the file with sips
        sips --resampleWidth 550 \
             --setProperty dpiHeight 300 \
             --setProperty dpiWidth 300 \
             "$file" \
             --out "${new_name}_wm_larger.png"
        
        echo "Processed '$file' → '${new_name}_wm_larger.png'"
    fi
done
