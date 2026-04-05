set -gx OLLAMA_KEEP_ALIVE "10m"

# Updates all installed Ollama models
function update_ollama
  # Get model names, skipping the header line
  set models (ollama list | tail -n +2 | awk '{print $1}')

  for model in $models
   echo "Checking for updates: $model"
   ollama pull $model
  end

  echo "Done! All models processed."
end

# Gets a list of files in a directory and copies them to the clipboard to use in an AI prompt
function ai_files
  set dir $argv[1]

  if test -z "$dir"
    echo "Usage: ai_files <directory>"
    return 1
  end

  if not test -d "$dir"
    echo "Error: '$dir' is not a directory"
    return 1
  end

  # limit number of files (prevents huge clipboard dumps)
  set limit 30

  begin
    echo "The following is a code module:"
    echo ""

    for f in (find $dir -type f \( -name "*.cpp" -o -name "*.hpp" \) | head -n $limit)
      echo "---- FILE: $f ----"
      cat $f
      echo ""
    end
  end | pbcopy

  echo "Copied files from '$dir' to clipboard (max $limit files)."
end
