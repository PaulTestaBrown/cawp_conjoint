counter=2

for file in *_bw.jpg; do
  sips --resampleWidth 200 --setProperty dpiHeight 200 --setProperty dpiWidth 300 "$file" --out "p${counter}_bw_smaller.png"
  counter=$((counter + 1))
done