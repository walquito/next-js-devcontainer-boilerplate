#!/bin/sh

# package.json がなければ pnpm create create-next-app を実行
if [ ! -f "/workspace/app/package.json" ]; then
  echo "No package.json found, initializing Next.js project..."
  pnpm create create-next-app@latest app --typescript --tailwind --eslint --app --src-dir --import-alias "@/*" --turbopack -y
  rm -rf /workspace/app/.gitignore
else
  echo "package.json found, skipping Next.js project initialization."
fi

cat .devcontainer/.zshrc >> ~/.zshrc
zsh && source ~/.zshrc

# # シェルを起動してコンテナが終了しないようにする
exec "$@"
