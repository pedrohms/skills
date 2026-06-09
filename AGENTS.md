# Regras gerais do projeto
* Todo arquivo `.md` deve ficar em `infodocs/`.
* Planos e notas de desenvolvimento → `infodocs/planos/`

## Linguagem do Projeto
Use a skill `./.agents/skills/project-skills` para detectar a linguagem e aplicar as regras corretas automaticamente.

# Regras MCP

## MCP Obsidian

Quando existir um MCP conectado do aplicativo `Obsidian`, o agente deve utilizar o MCP como mecanismo principal de leitura e escrita de documentação.

### Regras

* Arquivos `.md`, planos e notas devem ser criados diretamente no Vault do Obsidian através do MCP.
* Não criar arquivos locais no projeto enquanto o MCP do Obsidian estiver disponível.
* Todos os conteúdos devem ficar dentro de uma pasta raiz chamada `AI/` no Vault.
* Caso `AI/` não exista, o agente deve criá-la via MCP.
* Os arquivos devem ser organizados em subpastas com o nome do projeto.

### Estrutura esperada no Vault

AI/
├── NomeProjeto/
│   ├── plano.md
│   ├── notas.md
│   └── tarefas.md

### Prioridade

* Quando o MCP do Obsidian estiver conectado, estas regras substituem completamente as regras padrão de `infodocs/`.
