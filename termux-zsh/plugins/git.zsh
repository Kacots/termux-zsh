_git_async_worker() {
  local dir="$PWD"
  local outfile="$1"

  #bukan repository kosongkan
  git -C "$dir" rev-parse --is-inside-work-tree > /dev/null 2>&1 || {
    echo "" > "$outfile"
    return
  }

  local branch
  branch=$(git -C "$dir" symbolic-ref --short HEAD 2> /dev/null) \
    || branch=$(git -C "$dir" rev-parse --short HEAD 2> /dev/null)

  # cepat cek dirty
  git -C "$dir" diff --quiet 2> /dev/null
  if [[ $? -ne 0 ]]; then
    echo "($branch) ❌" > "$outfile"
  else
    echo "($branch) ✅" > "$outfile"
  fi
}

GIT_PROMPT_CACHE="${XDG_CACHE_HOME:-$HOME/.cache/zsh-git}"

mkdir -p "$GIT_PROMPT_CACHE"

_git_async_update() {
  local key=${PWD//\//_}
  local outfile="$GIT_PROMPT_CACHE/$key"

  # Jalankan worker di background
  (_git_async_worker $outfile) &!
}

_git_async_read() {
  local key=${PWD//\//_}
  local outfile="$GIT_PROMPT_CACHE/$key"

  [[ -f "$outfile" ]] && cat "$outfile"
}
