<xaiArtifact artifact_id="b5d3abb8-ae20-4d00-bacc-9759afdd05dd" artifact_version_id="6ce67408-6d26-46ac-aecc-e4fbc1b953ed" title="README.md" contentType="text/markdown">

# My Rotten Potatoes - Projeto de Engenharia de Software

Este projeto foi desenvolvido como parte da disciplina de Engenharia de Software da Universidade de Brasília (UnB).

- **Aluno:** Célio Júnio de Freitas Eduardo
- **Matrícula:** 211010350

## 📖 Sobre o Projeto

`My Rotten Potatoes` é uma aplicação web simples construída com Ruby on Rails, baseada nas orientações do livro *Engineering Software as a Service*. O objetivo principal é criar um catálogo de filmes onde o usuário pode realizar operações básicas de cadastro (CRUD - Create, Read, Update, Delete) e ordenar a lista de filmes por título e data de lançamento.

O projeto demonstra a aplicação prática dos conceitos do padrão de arquitetura MVC (Model-View-Controller) e do Active Record para a persistência de dados.

### ✨ Funcionalidades Implementadas

- Listagem de todos os filmes cadastrados.
- Visualização de detalhes de um filme específico.
- Adição de novos filmes ao catálogo.
- Edição de informações de filmes existentes.
- Exclusão de filmes do catálogo.
- Ordenação da lista de filmes por **título** (ordem alfabética).
- Ordenação da lista de filmes por **data de lançamento**.
- Destaque visual na coluna que está sendo utilizada para a ordenação.

## 🚀 Como Rodar o Projeto Localmente

Para executar esta aplicação em sua máquina, siga os passos abaixo.

### ✅ Pré-requisitos

Antes de começar, garanta que você tenha os seguintes softwares instalados:

- **Ruby** (versão 3.0 ou superior)
- **Rails** (versão 7.0 ou superior)
- **Bundler** (gerenciador de dependências do Ruby)
- **Git** (para clonar o repositório)

### ⚙️ Passos para Instalação

1. **Clone o Repositório:**
   Abra seu terminal e clone este projeto usando o Git.
   ```bash
   git clone https://github.com/celio-eduardo/myrottenpotatoes.git
   ```

2. **Acesse a Pasta do Projeto:**
   ```bash
   cd myrottenpotatoes
   ```

3. **Instale as Dependências:**
   Execute o Bundler para instalar todas as gems necessárias.
   ```bash
   bundle install
   ```

4. **Crie e Configure o Banco de Dados:**
   Execute os seguintes comandos do Rails para criar o banco de dados, aplicar as migrations e popular a tabela com dados iniciais.
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

### ▶️ Executando a Aplicação

Com tudo configurado, inicie o servidor local do Rails:

```bash
bin/dev
```

ou

```bash
rails server
```

Abra seu navegador e acesse a URL: [http://localhost:3000/movies](http://localhost:3000/movies).

## 🔍 Verificando o Funcionamento

Para garantir que todas as funcionalidades do projeto estão operando corretamente, siga este checklist:

1. **Acessar a Página Principal:**
   - Vá para `http://localhost:3000/movies`.
   - **Resultado esperado:** A página deve carregar, exibindo uma tabela com a lista inicial de filmes.

2. **Verificar a Ordenação por Título:**
   - Clique no cabeçalho da coluna **"Movie Title"**.
   - **Resultado esperado:** A lista de filmes deve ser recarregada em ordem alfabética pelo título. O cabeçalho "Movie Title" deve aparecer com um fundo amarelo de destaque.

3. **Verificar a Ordenação por Data de Lançamento:**
   - Clique no cabeçalho da coluna **"Release Date"**.
   - **Resultado esperado:** A lista deve ser recarregada em ordem de data (do mais antigo para o mais novo). O cabeçalho "Release Date" deve ficar destacado em amarelo.

4. **Adicionar um Novo Filme:**
   - Clique no botão **"Add new movie"**.
   - Preencha o formulário e clique em **"Save Changes"**.
   - **Resultado esperado:** Você será redirecionado para a lista principal, e uma mensagem de sucesso ("...was successfully created.") deve aparecer no topo. O novo filme deve estar na lista.

5. **Verificar Detalhes e Edição:**
   - Na lista, clique em um link da coluna **"More Info"**.
   - Na página de detalhes, clique no botão **"Edit"**.
   - Altere alguma informação e clique em **"Update Movie"**.
   - **Resultado esperado:** A página de detalhes será exibida com a informação atualizada e uma mensagem de sucesso.

6. **Excluir um Filme:**
   - Na página de detalhes de um filme, clique no botão **"Delete"**.
   - Uma caixa de confirmação aparecerá. Confirme a exclusão.
   - **Resultado esperado:** Você será redirecionado para a lista principal, o filme não estará mais lá e uma mensagem de sucesso ("...deleted.") será exibida.

</xaiArtifact>
