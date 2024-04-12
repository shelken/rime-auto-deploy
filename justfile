# 测试
[macos]
rime-test: rime-clean
  # rm -rf "$HOME/Library/Rime/*.custom.yaml"
  rsync -avz --copy-links --chmod=D2755,F744 ./custom/*.custom.yaml "$HOME/Library/Rime/"

# 清理
[macos]
rime-clean:
  rm -rf "$HOME/Library/Rime/*.custom.yaml"
