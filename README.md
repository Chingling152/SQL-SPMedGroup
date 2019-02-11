# SQL-SPMedgroup
------------


# Sumario  
**1. [Banco de dados](#Banco-de-dados)**  
 * **1.1. [Sobre](#Sobre)**  
  1.1.1. [Arquitetura](#Arquitetura)
  1.1.2 [Ordem dos arquivos](#Ordem-dos-arquivos)
 
* **1.2. [Tabelas](#Tabelas)**  
  1.2.1 [Alterando tabelas](#Alterando-tabelas)  
  1.2.2 [Removendo tabelas](#Removendo-tabelas)  
  1.2.3 [Criando novas tabelas](#Criando-novas-tabelas)  
  
* **1.3. [Dados](#Dados)**  
 1.3.1. [Inserção de dados](#Inserção-de-dados)  
 1.3.2. [Alteração de dados](#Alteração-de-dados)  
 1.3.3. [Remoção de dados](#Remoção-de-dados)  
 1.3.4. [Vizualização de dados](#Vizualização-de-dados)  
  
* **1.4. [Funções](#Funções)**  
  1.4.1. [Funções existentes](#Funções-existentes)  
  1.4.2. [Funções globais](#Funções-globais)  
  1.4.3. [Funções do usuario](#Funções-do-usuario)  
  
* **1.5. [Views](#Views)**  
  1.5.1. [Views existentes](#Views-existentes)  
  1.5.2. [Views globais](#Views-globais)  
  
* **1.6. [Procedures](#Procedures)**  
  1.6.1. [Por que Procedures?](#Por-que-usar-Procedures?)
  1.6.2. [Procedures existentes](#Procedures-existentes)
  
# Banco de dados  

## Sobre  

### Arquitetura  

### Ordem dos arquivos  
Os arquivos iniciais tem um padrão a ser executado e o padrão é
1. Criação das tabelas : [Criação.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Cria%C3%A7%C3%A3o.sql "Criação.sql")
2. Criação dos Procedures :
3. Criação das Views : 
4. Valores padrão (opcional) : [InserçãoDefault.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Inser%C3%A7%C3%A3oDefault.sql "InserçãoDefault.sql")

## Tabelas  
O Arquivo [Criação.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Cria%C3%A7%C3%A3o.sql "Criação.sql") contem todas as tabelas necessarias para criar todas as tabelas, a ordem está de cima para baixo então, apenas execute todas as linhas de uma vez (pra poupar trabalho).Alem disso, o arquivo Criação.sql **deve ser o primeiro a ser executado** porque nele há o comando principal pra criação do banco de dados (**CREATE DATABASE**).  

### Alterando tabelas  
Você pode alterar qualquer valor da tabela antes de criar. **Porém deve ter bastante cuidado ao fazer isso** , pois irá prejudicar (ou inutilizar) muitas views , funções e inserts que usam alguns campos.  
Você apenas podera usar views que usam todas as colunas sem especificação (\**Veja [Views globais](#Views-globais)* ) , alterar as views existentes ou criar suas proprias views (Por favor se fizer isso , use o arquivo [Views.sql](#))  

### Removendo tabelas  
Caso queira remover qualquer tabela existente , apenas apague ela do arquivo Criação.sql .**Brincadeira , não faça isso você irá inutilizar o programa**. Você terá que reescrever **TODO** o codigo denovo , mesmo que remova uma tabela pequena.  
**NÃO É NEM UM POUCO RECOMENDADO APAGAR TABELAS.**  
### Criando novas tabelas  
Criar novas tabelas também é possivel (tudo é possivel.. é um arquivo.sql , yupi!) **tambem não muito recomendado,** mas apesar de tudo, criar tabelas novas seria o que causaria o menor impacto.  
Mesmo assim, não é recomendado (a manutenção do codigo ficaria dificil).  
A unica exceção é caso você crie uma tabela baseada em **TipoUsuario**, (Exemplo : Administrador,Paciente e Medico)

## Dados  
O Banco de dados tem valores padrões gerados em [InserçãoDefault.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Inser%C3%A7%C3%A3oDefault.sql "InserçãoDefault.sql") são apenas alguns valores iniciais.  

### Inserção de dados
Caso queira inserir dados, use o arquivo [Inserção.sql](#).  
Os dados do banco de dados podem ser tanto manipulados com [Procedures](#Procedures) (Recomendado) ou com **INSERT**(Não recomendado).  
Antes de inserir os dados, veja que algumas tabelasdependem de valores em outras tabelas.  
Então, pra facilitar o seu trabalho aqui tem uma tabela de prioridades (Ordem crescente):   

1. Tipo De Usuario \ Especialidade \ Clinica  
2. Usuario  
3. Administrador \ Paciente \ Medico  
4. Tipo de Consulta  
5. Consulta  

#### Exemplo : 
Para criar um **paciente**, Você teria ue ter um **usuario** para referenciar, mas cada **usuario** tem um **tipo de usuario**. Então para criar um paciente seria necessario antes, ter um usuario e um tipo de usuario.  
  
Inserir dados diretamente usando **INSERT** pode deixar o codigo confuso, veja [porque usar procedures](#Por-que-usar-Procedures?)

### Alteração de dados  

### Remoção de dados  

### Vizualização de dados  

## Funções

### Funções existentes
### Funções globais
### Funções do usuario

## Views  

### Views existentes   
### Views globais   

## Procedures  

### Por que usar Procedures?

### Procedures existentes  

