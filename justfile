# 测试
[macos]
rime-test: rime-clean
  # rm -rf "$HOME/Library/Rime/*.custom.yaml"
  rsync -avz --copy-links --chmod=D2755,F744 ./custom/*.custom.yaml "$HOME/Library/Rime/"

# 清理
[macos]
rime-clean:
  rm -rf $HOME/Library/Rime/*.custom.yaml

# 获取程序完整信息
[macos]
get app_name:
  #!/usr/bin/env bash
  find -L ~/Applications/Home\ Manager\ Apps -maxdepth 1 -name "*{{app_name}}*.app" -exec grep CFBundleIdentifier -A1 {}/Contents/Info.plist \;
  find -L /Applications -maxdepth 1 -name "*{{app_name}}*.app" -exec grep CFBundleIdentifier -A1 {}/Contents/Info.plist \;
