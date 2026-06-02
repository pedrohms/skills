#!/usr/bin/env bash
set -e

if [ -z "$1" ]; then
    echo "Uso: $0 <pasta_destino>"
    echo ""
    echo "Exemplos:"
    echo "  $0 ~/.agents/skills"
    echo "  $0 .agents/skills"
    echo "  $0 \$HOME/.agents/skills"
    echo "  $0 ."
    exit 1
fi

DEST="$1"

# Expande variáveis de ambiente e resolve caminho
DEST=$(eval echo "$DEST")
DEST=$(realpath -m "$DEST")   # Resolve . e ~ corretamente

echo "Instalando skills em: $DEST"

mkdir -p "$DEST"

TMP_DIR=$(mktemp -d)
git clone --depth 1 https://github.com/pedrohms/skills.git "$TMP_DIR/repo"

# Copia apenas pastas que parecem skills (contêm SKILL.md) + AGENTS.md
find "$TMP_DIR/repo" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
    if [ -f "$dir/SKILL.md" ]; then
        cp -r "$dir" "$DEST/"
    fi
done

# Copia o AGENTS.md se existir
if [ -f "$TMP_DIR/repo/AGENTS.md" ]; then
    cp "$TMP_DIR/repo/AGENTS.md" "$DEST/AGENTS.md"
fi

rm -rf "$TMP_DIR"

echo ""
echo "✅ Skills instaladas com sucesso em: $DEST"
echo "Reinicie o OpenCode para carregar as alterações."
