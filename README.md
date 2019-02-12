# SQL-SPMedgroup


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
  
* **1.6. [Procedures](#Procedures)**   
  1.6.2. [Procedures existentes](#Procedures-existentes)  
  
**2. [Modelagem](#Modelagem)**  
 * **2.1. [Modelo descritivo](#Modelo-descritivo)**  
 * **2.2. [Modelo logico](#Modelo-logico)**  
  
# Banco de dados  

## Sobre  

### Arquitetura  

### Ordem dos arquivos  
Os arquivos iniciais tem um padrão a ser executado e o padrão é
1. Criação das Tabelas : 
2. Criação das Views : 
3. Criação dos Procedures (seleção) :  
4. Criação dos Procedures (inserção):
5. Valores padrão (opcional) : 

## Tabelas  
O Arquivo [Criação.sql](#) contem todas as tabelas necessarias para criar todas as tabelas, a ordem está de cima para baixo então, apenas execute todas as linhas de uma vez (pra poupar trabalho).Alem disso, o arquivo Criação.sql **deve ser o primeiro a ser executado** porque nele há o comando principal pra criação do banco de dados (**CREATE DATABASE**).  

### Alterando tabelas  
Você pode alterar qualquer valor da tabela antes de criar. **Porém deve ter bastante cuidado ao fazer isso** , pois irá prejudicar (ou inutilizar) muitas views , funções e inserts que usam alguns campos.  
Você apenas podera usar views que usam todas as colunas sem especificação (\**Veja [Views](#Views)* ) , alterar as views existentes ou criar suas proprias views (Por favor se fizer isso , use o arquivo [Views.sql](#))  

### Removendo tabelas  
Caso queira remover qualquer tabela existente , apenas apague ela do arquivo Criação.sql .**Brincadeira , não faça isso você irá inutilizar o programa**. Você terá que reescrever **TODO** o codigo denovo , mesmo que remova uma tabela pequena.  
**NÃO É NEM UM POUCO RECOMENDADO APAGAR TABELAS.**  
### Criando novas tabelas  
Criar novas tabelas também é possivel (tudo é possivel.. é um arquivo.sql , yupi!) **tambem não muito recomendado,** mas apesar de tudo, criar tabelas novas seria o que causaria o menor impacto.  
Mesmo assim, não é recomendado (a manutenção do codigo ficaria dificil).  
A unica exceção é caso você crie uma tabela baseada em **TipoUsuario**, (Exemplo : Administrador,Paciente e Medico)

## Dados  
O Banco de dados tem valores padrões gerados em [InserçãoDefault.sql](#) são apenas alguns valores iniciais.  

### Inserção de dados
Caso queira inserir dados, use o arquivo [Inserção.sql](#).  
Os dados do banco de dados podem ser tanto manipulados com [Procedures](#Procedures) (Recomendado) ou com **INSERT**(Não recomendado).  
Antes de inserir os dados, veja que algumas tabelas dependem de valores em outras tabelas.  
Então, pra facilitar o seu trabalho aqui tem uma tabela de prioridades (Ordem crescente):   

1. Tipo De Usuario \ Especialidade \ Clinica  
2. Usuario  
3. Paciente \ Medico  
4. Clinica  
5. Consulta  

#### Exemplo : 
Para criar um **paciente**, Você teria ue ter um **usuario** para referenciar, mas cada **usuario** tem um **tipo de usuario**. Então para criar um paciente seria necessario antes, ter um usuario e um tipo de usuario.  
  
Inserir dados diretamente usando **INSERT** pode deixar o codigo confuso, veja [Procedures](#Procedures)

### Alteração de dados  

### Remoção de dados  

### Vizualização de dados  

## Funções

### Funções existentes
### Funções globais
### Funções do usuario

## Views  
Views filtram suas seleções
### Views existentes   
Aqui ficarão todas as views e tudo que cada uma delas retorna.  
Views sempre retornam  valores da tabela, mas filtram o que será enviado.  
  
----------
- **VerMedicos**  
  - ID
  - Nome  
  - Email  
  - Especialização  
  - Nivel de privilegio  
  - CRM  
  - Nome da clinica onde ele trabalha  
  - Especialidade  
- **VerPacientes** 
  - ID  
  - Nome  
  - Email  
  - Privilegios  
  - CPF  
  - Telefone  
  - Data de nascimento  
- **VerConsultas**
  -  ID da consulta  
  - Nome do Medico  
  - Nome do paciente  
  - Nome da clinica   
  - Endereço da clinica  
  - Especialização do medico  
  - Data da consulta  
  - Descrição  
- **VerClinicas**  
  - Nome fantasia  
  - Razão social  
  - Endereço  
  - Numero  
  - CEP  

## Procedures  
Procedures são pequenas funções que executam um certo grupo de comandos, nesse banco de dados há varios procedures. Desde procedures apenas para visualização de dados, até procedures para inserção , alteração e remoção de dados.  

### Procedures existentes  
Os procedures do banco tem funções bem especificas, porisso são bastante limitados( A maioria deles apenas retorna um registro em um indice especifico).Mas eles cumprem bem suas funções.

----------
#### Utilizam a View **[VerMedicos](#Views-existentes)**.  
* **ProcurarMedicoPorID** -> Recebe um : numero inteiro(ID)  
Retorna o *NOME*  e *CRM*  do medico o ID selecionado  
 
* **VerTudoMedico**  -> Recebe um : numero inteiro(ID)  
Retorna *TODOS*  os dados da View **VerMedicos**  
  
* **ProcurarUsuarioMedico**  -> Recebe um : numero inteiro(ID)  
Retorna  o *NOME*  , *CRM* e o *NIVEL DE PRIVILEGIOS* do medico no ID selecionado.  
  
#### **Utilizam a View [VerPacientes](#Views-existentes)**.  
  
* **ProcurarPacientePorID**  -> Recebe um : numero inteiro(ID)  
Retorna *NOME* , *CPF* e *RG* do usuario no ID selecionado
* **VerTudoPaciente**
Retorna *TODOS*  os dados da View **VerPacientes**  
  
* **ProcurarUsuarioPaciente**  -> Recebe um : numero inteiro(ID)  
Retorna o *NOME* , *EMAIL* e *NIVEL DE PRIVILEGIOS* do usuario no ID selecionado  
  
* **ProcurarPacientePorCPF** -> Recebe um char de 11 caracteres 
Retorna *TODOS*  os dados da View **VerPacientes** no usuario com o CPF  

#### **Utilizam a View [VerClinicas](#Views-existentes)**.  

#### **Utilizam a View [VerConsultas](#Views-existentes)**.  
