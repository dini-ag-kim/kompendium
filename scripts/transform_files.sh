#!/bin/bash

# Define the directory name with the current date (YYYY-MM-DD format) and prepend an underscore
output_dir="docs"
mkdir -p "$output_dir"

# rm present files in output_dir
rm -f "$output_dir/*"

# Find directories starting with a number followed by an underscore
# and loop through them
find . -type d -regextype posix-extended -regex './[0-9]+_.*' | while read -r dir
do
    echo "Processing directory: $dir"

    # Copy specific subdirectories like 'images' or 'tables' without overwriting, but adding to them
    for subdir in images tables; do
        if [ -d "$dir/$subdir" ]; then
            echo "Copying $subdir from $dir"
            rsync -av --ignore-existing "$dir/$subdir/" "$output_dir/$subdir/"
        fi
    done

    # Find all markdown files in the current directory, recursively
    find "$dir" -type f -name '*.md' | while read -r file
    do
        # Extract filename without path to use in output directory
        filename=$(basename "$file")
        
        # Use pandoc to convert the file and save it in the output directory
        pandoc -f markdown -t commonmark+footnotes --citeproc --wrap=none --bibliography=metadaten.json "$file" -o "$output_dir/$filename"
        
        echo "Converted $file and saved as $output_dir/$filename"
    done
done

echo "Copy template files..."
cp templates/* "$output_dir/"

# Copy all readme
for file in README*.md; do
  if [ -f "$file" ]; then
    cp "$file" "$output_dir/"
  fi
done

cp images/* "$output_dir/images/"

echo "Processing complete. Files are saved in $output_dir"

