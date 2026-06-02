---
name: project-language
description: Detecta automaticamente a linguagem do projeto e ativa a skill de regras correspondente
---

# Project Language Orchestrator

Siga este procedimento sempre que iniciar uma sessão ou precisar aplicar regras específicas do projeto:

1. **Detecte a linguagem** analisando os arquivos na raiz do projeto:
   - `pom.xml` ou `build.gradle` → Java/Kotlin
   - `pubspec.yaml` → Dart/Flutter
   - `package.json` → Node.js/TypeScript
   - `go.mod`, `Cargo.toml`, etc.

2. **Ative a skill correspondente** à linguagem detectada:
   - Java → `java`
   - Kotlin → `kotlin`
   - Dart/Flutter → `dart`
   - Outras linguagens → skill com o mesmo nome da linguagem (se existir em `.agents/skills/`)

3. Siga **todas as regras** da skill ativada durante a sessão.

4. Se não existir skill específica para a linguagem detectada, use apenas as regras gerais do `AGENTS.md` e informe ao usuário.

# 3. Diretrizes de Commit
* **Idioma:** Todas as mensagens de commit devem ser escritas em **Português do Brasil**.
* **Assinatura:** Todos os commits devem ser assinados criptograficamente usando GPG (`git commit -S` ou configuração global `commit.gpgsign = true`).
