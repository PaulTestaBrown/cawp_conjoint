counter=2

for file in *_bw.jpg; do
  sips --resampleWidth 550 --setProperty dpiHeight 550 --setProperty dpiWidth 300 "$file" --out "p${counter}_bw_larger.png"
  counter=$((counter + 1))
done