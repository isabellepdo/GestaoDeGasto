# GestaoDeGasto
<!---Esses são exemplos. Veja https://shields.io para outras pessoas ou para personalizar este conjunto de escudos. Você pode querer incluir dependências, status do projeto e informações de licença aqui--->


> Este é um pequeno protótipo de um sistema que recebe o arquivo CSV disponibilizado pela câmara dos deputados, que contém dados publicos de gastos parlamentares. Foram desenvolvidas as seguintes funcionalidades.
* Leitura de Arquivo CSV disponibilizado em https://dadosabertos.camara.leg.br/swagger/api.html#staticfile
* Processamento de Arquivo e tratamento de dados em tabelas postgres.
* Visualização de dados tratados.

## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:
<!---Estes são apenas requisitos de exemplo. Adicionar, duplicar ou remover conforme necessário--->
* ruby "3.0.0"
* gem 'rails', '7.0.4'
* Postgres 12.12
* Criar um banco chamado "gestadegasto_development"

## 🚀 Instalando a aplicação

Para instalar o Teste bolg, siga estas etapas:

1 - Atualize as configurações de banco conforme o nessario no arquivo: database.yml
```
username: <nome de usuario>
password: <senha do usuario>
```
2 - dentro do promt de comando excutar os comandos a seguir na ordem:
```
Bundle install
rails s
```


## ☕ Usando o Sistema

Após subir o servidor acesse a endereço onde o serviço esta rodando, por padrão é utilizado o endereço:

```
https://localhost:3000
```
* Alguns dados foram pré cadastrados para teste do sistema, mas você pode importar um novo arquivo para teste.
