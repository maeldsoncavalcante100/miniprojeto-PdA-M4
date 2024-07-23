# 📚 Manga API

Bem-vindo ao **Manga API**, um projeto desenvolvido como parte do Miniprojeto do módulo 4 do curso **Programadores do Amanhã**. Esta API permite explorar e gerenciar informações sobre autores de mangás e suas obras de maneira fácil e prática.

## 🖼️ Visão Geral

O projeto foi desenvolvido utilizando **JavaScript**, **Node.js**, e **Express**, com testes de rotas realizados através do **Postman**. A API oferece as seguintes funcionalidades:

- **Autores:**
  - Listar todos os autores.
  - Visualizar um autor por ID.
  - Atualizar informações de um autor.
  - Deletar um autor.

- **Mangás:**
  - Listar todas as obras de um autor.
  - Visualizar uma obra por ID.
  - Atualizar informações de uma obra.
  - Deletar uma obra.

## 🛠️ Tecnologias Utilizadas

- **Node.js**: Ambiente de execução para JavaScript no servidor.
- **Express**: Framework para criar APIs de forma simples e rápida.
- **MySQL**: Banco de dados utilizado para armazenar informações sobre os mangás e autores.
- **Postman**: Ferramenta para teste de APIs.

## 🚀 Como Rodar o Projeto Localmente

Siga este passo a passo para configurar e rodar o projeto na sua máquina.

### Pré-requisitos

- **Node.js** (versão 14 ou superior)
- **npm** (geralmente instalado junto com o Node.js)
- **MySQL** (instalado e rodando)
- **Postman** (opcional, para testes)

### Passo 1: Clonar o Repositório

```
git clone https://github.com/maeldsoncavalcante100/miniprojeto-PdA-M4.git

cd miniprojeto-PdA-M4
```

### Passo 2: Instale as Dependências

```
npm install
```

### Passo 4: Iniciar o Servidor
```
npm run dev
```
O servidor estará rodando em http://localhost:3000.

### Passo 5: Testar as Rotas

- **Autores:**
  - GET /autores - Listar todos os autores.
  - GET /autores/:id - Obter autor por ID
  - POST /autores - Cria um novo autor
  - PUT /autores/:id  - Atualizar autor por ID
  - DELETE /autores/:id - Deletar autor por ID
- **Mangás:**
  - GET /manga - Listar todas as obras dos autores
  - GET /mangas/:id - Obter obra por ID
  - POST /manga - Criar uma nova obra
  - PUT /mangas/:id - Atualizar uma obra
  - DELETE /mangas/:id - Deletar obra por ID


### 📄 Licença
Este projeto está sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.
