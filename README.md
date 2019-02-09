# SQL-SPMedgroup
------------


# Sumario  
**1. [Banco de dados](#Banco-de-dados)**  
  
* **1.1. [Tabelas](#Tabelas)**  
  1.1.1 [Alterando tabelas](#Alterando-tabelas)  
  1.1.2 [Removendo tabelas](#Removendo-tabelas)  
  1.1.3 [Criando novas tabelas](#Criando-novas-tabelas)  
  
* **1.2. [Dados](#Dados)**  
 1.2.1. [Inserção de dados](#Inserção-de-dados)  
 1.2.2. [Alteração de dados](#Alteração-de-dados)  
 1.2.3. [Remoção de dados](#Remoção-de-dados)  
  
* **1.3. [Funções](#Funções)**  
  1.3.1. [Funções existentes](#Funções-existentes)  
  1.3.2. [Funções globais](#Funções-globais)  
  1.3.3. [Funções do usuario](#Funções-do-usuario)  
  
* **1.4. [Views](#Views)**  
  1.4.1. [Views existentes](#Views-existentes)  
  1.4.2. [Views globais](#Views-globais)  
# Banco de dados

## Tabelas  
O Arquivo [Criação.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Cria%C3%A7%C3%A3o.sql "Criação.sql") contem todas as tabelas necessarias para criar todas as tabelas, a ordem está de cima para baixo então, apenas execute todas as linhas de uma vez (pra poupar trabalho).Alem disso, o arquivo Criação.sql **deve ser o primeiro a ser executado** porque nele há o comando principal pra criação do banco de dados (**CREATE DATABASE**).  

### Alterando tabelas  
Você pode alterar qualquer valor da tabela antes de criar. **Porém deve ter bastante cuidado ao fazer isso** , pois irá prejudicar (ou inutilizar) muitas views , funções e inserts que usam alguns campos.  
Você apenas podera usar views que usam todas as colunas sem especificação (\**Veja [Views globais](#Views-globais)* ) , alterar as views existentes ou criar suas proprias views (Por favor se fizer isso , use o arquivo Views.sql)  

### Removendo tabelas  
Caso queira remover qualquer tabela existente , apenas apague ela do arquivo Criação.sql .**Brincadeira , não faça isso você irá inutilizar o programa**. Você terá que reescrever **TODO** o codigo denovo , mesmo que remova uma tabela pequena.  
**NÃO É NEM UM POUCO RECOMENDADO APAGAR TABELAS.**  
### Criando novas tabelas  
Criar novas tabelas também é possivel (tudo é possivel.. é um arquivo.sql , yupi!) tambem não muito recomendado, mas apesar de tudo, criar tabelas novas seria o que causaria o menor impacto.  
Mesmo assim, não é recomendado (a manutenção do codigo ficaria dificil).

## Dados

### Inserção de dados

### Alteração de dados

### Remoção de dados

## Funções

### Funções existentes
### Funções globais
### Funções do usuario

## Views  

### Views existentes   
### Views globais   
