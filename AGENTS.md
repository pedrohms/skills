# Regras gerais do projeto

* **Planejamento e Documentação**: Todo e qualquer arquivo `.md`, plano de arquitetura e nota de desenvolvimento DEVE ser criado, lido e atualizado exclusivamente dentro do diretório `infodocs/`.
* **Ação Obrigatória**: Antes de salvar, verifique se `infodocs/` existe. Se não existir, execute a criação da pasta. Nunca crie arquivos de documentação na raiz do projeto.

## Planos e Notas de Desenvolvimento

* Planos de arquitetura e notas de desenvolvimento devem ser salvos em: `infodocs/planos/<nome-do-arquivo>.md`
* O `<nome-do-arquivo>` deve ser gerado pelo agente de forma descritiva.
* Se a pasta `infodocs/planos/` não existir, crie-a antes de salvar.

## Linguagem do Projeto
* Detecte automaticamente a linguagem e framework analisando os arquivos do projeto (ex: `pom.xml`, `build.gradle`, `package.json`, `pubspec.yaml`, `go.mod`, `Cargo.toml`, etc.).
* Leia o arquivo correspondente a linguagem em: `infodocs/linguagem/<linguagem>.md` (ex: `java.md`, `kotlin.md`, `dart.md`, etc.)
