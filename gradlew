#!/usr/bin/env sh
ROOT="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
DIST="$ROOT/.gradle-local/gradle-8.9"
if [ ! -x "$DIST/bin/gradle" ]; then
  echo "Gradle 8.9 indiriliyor..."
  mkdir -p "$ROOT/.gradle-local"
  curl -L "https://services.gradle.org/distributions/gradle-8.9-bin.zip" -o "$ROOT/.gradle-local/gradle.zip" || exit 1
  unzip -q "$ROOT/.gradle-local/gradle.zip" -d "$ROOT/.gradle-local" || exit 1
  rm -f "$ROOT/.gradle-local/gradle.zip"
fi
exec "$DIST/bin/gradle" "$@"
