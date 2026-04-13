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

# Autocomplete
function ai_auto
  cd sandbox/llm/llama.cpp/build/bin
  ./llama-server -hf ggml-org/Qwen2.5-Coder-1.5B-Q8_0-GGUF:Q8_0 --port 8081 -c 4096 --flash-attn on
end

# Gemma 4B
function ai_gemma
  cd sandbox/llm/llama.cpp/build/bin
  ./llama-server -hf ggml-org/gemma-4-E4B-it-GGUF:Q8_0 --port 8080 -c 32768 --flash-attn on --no-mmap --jinja
end

# Qwen 14B
function ai_qwen
  cd sandbox/llm/llama.cpp/build/bin
  ./llama-server -hf Qwen/Qwen2.5-Coder-14B-Instruct-GGUF:Q5_K_M --port 8080 -c 32768 --flash-attn on --no-mmap --jinja
end
