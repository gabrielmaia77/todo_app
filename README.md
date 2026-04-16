# Todo App - Ruby on Rails

Aplicação web para gerenciamento de tarefas desenvolvida com Ruby on Rails, utilizando PostgreSQL e Docker.

## Tecnologias

* Ruby on Rails
* PostgreSQL
* Docker
* JavaScript
* Git

## Conceitos

* Arquitetura MVC
* ActiveRecord (ORM)
* Migrations
* Relacionamentos entre modelos
* Autenticação com sessão

## Funcionalidades

* Cadastro de usuário
* Login e logout
* CRUD de tarefas
* Associação entre usuário e tarefas

## Como rodar o projeto

```bash
git clone https://github.com/gabrielmaia77/todo_app.git
cd todo_app

bundle install

docker compose up -d

rails db:create db:migrate

rails s
```

A aplicação estará disponível em:

http://localhost:3000

## Estrutura

* app/models: regras de negócio
* app/controllers: controle de fluxo
* app/views: interface
* db/migrate: versionamento do banco

## Banco de dados

* PostgreSQL via Docker
* Porta: 5433

## Autor

Gabriel Maia
https://github.com/gabrielmaia77
