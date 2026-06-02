---
name: java
description: Regras de build, teste, estilo de código e commit para projetos Java
---

# Diretrizes do Agente para o projeto corrente
* Este documento descreve as diretrizes de build, teste e estilo de código para agentes trabalhando no repositório corrente.

## 1. Comandos de Build e Testes
* **Build do Projeto:** `mvn clean install` ou `./mvnw clean install`
* **Executar Todos os Testes:** `mvn test` ou `./mvnw test`
* **Executar Classe de Teste Única:** `mvn test -Dtest=NomeDaSuaClasseDeTeste` (ex.: `mvn test -Dtest=MainTest`)
* **Executar Método de Teste Único:** `mvn test -Dtest=NomeDaSuaClasseDeTeste#nomeDoSeuMetodoDeTeste` (ex.: `mvn test -Dtest=MainTest#contextLoads`)
* **Build Docker:** `docker build . -t compuservice/debug`

## 2. Diretrizes de Estilo de Código (Java)
* **Imports:** Organize os imports para evitar os não utilizados.
* **Formatação:** Siga as convenções padrão do Java (ex.: Google Java Format ou similar).
* **Convenções de Nomenclatura:**
    * Classes: PascalCase (ex.: `MinhaClasse`)
    * Métodos: camelCase (ex.: `meuMetodo`)
    * Variáveis: camelCase (ex.: `minhaVariavel`)
    * Constantes: SCREAMING_SNAKE_CASE (ex.: `MINHA_CONSTANTE`)
* **Tipos:** Utilize declarações de tipo explícitas.
* **Tratamento de Erros:** Use blocos try-catch para exceções verificadas e lance exceções não verificadas quando apropriado. Registre erros efetivamente usando Log4j2.
