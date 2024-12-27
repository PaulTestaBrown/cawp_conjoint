# Loop through all .jpg files
for file in *.jpg; do
    # Check if the file contains '_bf'
    if [[ "$file" =~ (.*)_bf ]]; then
        # Extract the part before '_bf'
        new_name="${BASH_REMATCH[1]}"
        
        # Process the file with sips
        sips --resampleWidth 550 \
             --setProperty dpiHeight 300 \
             --setProperty dpiWidth 300 \
             "$file" \
             --out "${new_name}_bf_larger.png"
        
        echo "Processed '$file' → '${new_name}_bf_larger.png'"
    fi
done
