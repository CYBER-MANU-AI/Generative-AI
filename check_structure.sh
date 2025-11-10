#!/bin/bash
echo "🔍 Checking Project Structure..."

# Check if essential files exist
files=(
    "BE/main.jac"
    "BE/utils.jac" 
    "BE/requirements.txt"
    "BE/agents/supervisor.jac"
    "BE/agents/repo_mapper.jac"
    "BE/agents/code_analyzer.jac"
    "BE/agents/doc_genie.jac"
    "FE/app.py"
    ".env"
    "README.md"
)

all_good=true
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file"
    else
        echo "❌ $file - MISSING"
        all_good=false
    fi
done

if [ "$all_good" = true ]; then
    echo "🎉 All files are present! Project structure is correct."
else
    echo "⚠️  Some files are missing. Please create them."
fi
