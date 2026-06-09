# Regras gerais do projeto

## Documentação Local

As regras desta seção aplicam-se apenas quando não existir um MCP de documentação conectado.

* Todo arquivo `.md` deve ficar em `infodocs/`.
* Planos e notas de desenvolvimento devem ficar em `infodocs/planos/`.

## Linguagem do Projeto

Use a skill localizada em `./.agents/skills/project-skills.md` para detectar a linguagem e aplicar as regras corretas automaticamente.

# Documentação

## Atualização de Documentação

Após a aprovação ou confirmação de um plano pelo usuário, o agente deve manter toda documentação relacionada atualizada durante a execução das tarefas.

### Regras

* Atualizar planos, notas e documentação sempre que houver progresso relevante.
* Registrar decisões técnicas, mudanças arquiteturais e tarefas concluídas.
* Registrar alterações relevantes realizadas no código.
* Não esperar uma solicitação adicional do usuário para atualizar a documentação.
* A documentação deve refletir continuamente o estado atual do projeto.
* Ao concluir uma tarefa, atualizar imediatamente a documentação correspondente.
* Após a aprovação do plano, a atualização da documentação passa a ser obrigatória durante toda a execução.

# Regras MCP

## MCP Obsidian

Quando existir um MCP conectado do aplicativo `Obsidian`, todas as regras desta seção possuem prioridade máxima e substituem completamente as regras de documentação local.

### Leitura e Escrita

* Utilizar o Vault do Obsidian como fonte principal de leitura de documentação.
* Utilizar o Vault do Obsidian como destino principal de escrita de documentação.
* Antes de criar novos planos, notas ou documentos, consultar a documentação existente no Vault.
* Reutilizar e atualizar documentos existentes sempre que apropriado.
* Evitar a criação de documentos duplicados.
* Ao iniciar uma tarefa, procurar planos, notas, decisões técnicas e documentação relacionada ao projeto no Vault.
* Considerar a documentação encontrada no Vault como a fonte principal de conhecimento do projeto.
* Não ler documentação de `infodocs/` quando existir documentação equivalente no Vault.
* Não criar ou atualizar arquivos `.md` locais enquanto o MCP estiver disponível.

### Atualização de Documentação

* Após a aprovação de um plano, atualizar a documentação diretamente no Vault conforme o progresso do trabalho.
* Registrar decisões técnicas, mudanças arquiteturais, tarefas concluídas e alterações relevantes realizadas no código.
* Não esperar solicitação explícita do usuário para atualizar a documentação.
* Manter a documentação sincronizada com o estado atual do projeto durante toda a execução.

### Estrutura do Vault

* Todos os conteúdos devem ficar dentro de uma pasta raiz chamada `AI/`.
* Caso a pasta `AI/` não exista, criá-la via MCP.
* Organizar os documentos em subpastas com o nome do projeto.

### Estrutura Esperada

AI/
├── NomeProjeto/
│   ├── plano.md
│   ├── notas.md
│   └── tarefas.md

### Prioridade

* Estas regras substituem completamente qualquer regra relacionada a `infodocs/`, planos locais ou documentação local.
* Enquanto o MCP do Obsidian estiver disponível, nenhuma documentação deve ser criada, alterada ou atualizada fora do Vault.


