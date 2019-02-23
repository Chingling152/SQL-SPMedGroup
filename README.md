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
 1.3.4. [Visualização de dados](#Visualização-de-dados)  
  
* **1.4. [Funções](#Funções)**  
  1.4.1. [Funções existentes](#Funções-existentes)  
  1.4.2. [Funções do usuario](#Funções-do-usuario)  
    
* **1.5. [Procedures](#Procedures)**   
  1.5.1. [Procedures de visualização](#Procedures-de-visualização)  
  1.5.2. [Procedures de inserção](#Procedures-de-inserção)  
  1.5.3 [Procedures do usuario](#Procedures-do-usuario)
  
**2. [Modelagem](#Modelagem)**  
 * 2.1. [Modelo descritivo](#Modelo-descritivo)  
 * 2.2. [Modelo logico](#Modelo-logico)  
  
# Banco de dados  

## Sobre  
SP-MedicalGroup é uma empresa fantasma(er.... eu acho) e esse banco de dados foi criado usando todo meu conhecimento em modelagem de banco de dados e foi programado em SQL.
### Arquitetura  
O Banco possui as tabelas : [Tipo_Usuario](#Tipo_Usuario) , [Usuario](#Usuario),[Paciente](#Paciente) , [Especialidade](#Especialidade) , [Clinica](#Clinica) e [Medico](#Medico)  
Para ver melhor como as tabelas se relacionam veja o [Modelo descritivo](#Modelo-descritivo).

#### Tipo_Usuario  
Ficarão todos os tipos de usuario (algo que seria mais ultil no back-end pra definir previlegios e essas coisas) é referencia apenas pela tabela **Usuario**.
#### Usuario  
Tabela onde serão armazenados os usuarios , terão email , senha e um **Tipo de usuario**, o email deverá ser unico .  
Essa tabela é referenciada nas tabelas **Paciente** e **Medico** *(Observação : para criar um administrador, **crie diretamente na tabela Usuario** e deixe o tipo dele como administrador)*
#### Paciente  
Tabela onde ficarão todos os pacientes (depende de um valor de referencia em Usuario)  
Essa tabela é referenciada na tabela **Consulta**.  
#### Especialidade  
Tabela onde ficarão todas as especialidades medicas  
#### Clinica  
Tabela onde ficarão todas as clinicas , é referencia apenas pela tabela **Medico**.  
#### Medico  
Tabela onde ficará todos os Medicos  
Deverá ter um CMR unico , e um valor para se referenciar na tabela **Usuario**  
#### Consulta  

### Ordem dos arquivos  
Os arquivos iniciais tem um padrão a ser executado e o padrão é
1. Criação das Tabelas : [Criação.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Essenciais/1-Cria%C3%A7%C3%A3o.sql)  
2. Criação das Views : [Views.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Essenciais/2-Views.sql)  
3. Criação dos Procedures (seleção) :  [Procedures_de_seleção.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Essenciais/3-Procedures_de_sele%C3%A7%C3%A3o.sql)  
4. Criação dos Procedures (inserção): [Procedures_de_inserção.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Essenciais/4-%20Procedures_de_inser%C3%A7%C3%A3o.sql)  
5. Valores padrão (opcional) : [Valores_iniciais.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Essenciais/5-Valores_iniciais.sql)  

## Tabelas  
O Arquivo [Criação.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Essenciais/1-Cria%C3%A7%C3%A3o.sql) contem todas as tabelas necessarias para criar todas as tabelas, a ordem está de cima para baixo então, apenas execute todas as linhas de uma vez (pra poupar trabalho).Alem disso, o arquivo Criação.sql **deve ser o primeiro a ser executado** porque nele há o comando principal pra criação do banco de dados (**CREATE DATABASE**).  

### Alterando tabelas  
Você pode alterar qualquer valor da tabela antes de criar. **Porém deve ter bastante cuidado ao fazer isso** , pois irá prejudicar (ou inutilizar) muitas views , funções e inserts que usam alguns campos.  
Você apenas podera usar views que usam todas as colunas sem especificação (\**Veja [Views](#Views)* ) , alterar as views existentes ou criar suas proprias views (Por favor se fizer isso , use o arquivo [Views.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Essenciais/2-Views.sql))  

### Removendo tabelas  
Caso queira remover qualquer tabela existente , apenas apague ela do arquivo Criação.sql .**Brincadeira , não faça isso você irá inutilizar o programa**. Você terá que reescrever **TODO** o codigo denovo , mesmo que remova uma tabela pequena.  
**NÃO É NEM UM POUCO RECOMENDADO APAGAR TABELAS.**  
### Criando novas tabelas  
Criar novas tabelas também é possivel (tudo é possivel.. é um arquivo.sql , yupi!) **tambem não muito recomendado,** mas apesar de tudo, criar tabelas novas seria o que causaria o menor impacto.  
Mesmo assim, não é recomendado (a manutenção do codigo ficaria dificil).  
A unica exceção é caso você crie uma tabela baseada em **TipoUsuario**, (Exemplo : Administrador,Paciente e Medico)

## Dados  
O Banco de dados tem valores padrões gerados em [Valores_iniciais.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/Essenciais/5-Valores_iniciais.sql) são apenas alguns valores iniciais.  

### Inserção de dados
Caso queira inserir dados, use o arquivo [Inserções_do_usuario.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/UserBuild/Inser%C3%A7%C3%B5es_do_usuario.sql).  
Ou use o arquivo Modelo_de_dados.xlsx importe ele usando o SQLServer caso queira alguns dados iniciais para teste (futuramente irei adicionar mais registros para testes de performace com bigdata)  
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
  
Inserir dados diretamente usando **INSERT** pode deixar o codigo confuso, veja [Procedures de inserção](#Procedures-de-inserção)

### Alteração de dados  
Ainda não tem procedures para isso , então por enquanto use **UPDATE**
### Remoção de dados  
Mesmo motivo da alteração de dados , então por enquanto use **DELETE**
### Visualização de dados  
Para visualizar os dados de alguma tabela , você pode usar usar [Views](#Views) Criadas por você mesmo , ou ja feitas. Use isso para testar o banco de dados (qualquer problema, coloque como issue) .  
**A seleção não afeta a integridade do banco de dados.**  

## Views  
Views filtram suas seleções, escondem alguns dados irrelevantes (ou que não devem ser mostrados por questão de segurança)  
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
 
### Views do usuario   
Você pode criar suas proprias views no arquivo [Views_do_usuario.sql](#) (Ou não.... você pode fazer tudo em um arquivo se quiser), não há muito o que dizer, já existem views o suficiente no banco de dados (a não ser que você queira filtrar mais).  

## Procedures  
Procedures são pequenas funções que executam um certo grupo de comandos, nesse banco de dados há varios procedures. Desde procedures apenas para visualização de dados, até procedures para inserção , alteração e remoção de dados.  
Os procedures do banco tem funções bem especificas, porisso são bastante limitados( A maioria deles apenas retorna um registro em um indice especifico).Mas eles cumprem bem suas funções.

### Procedures de visualização  
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

* **ProcurarClinicaPorID**-> Recebe um : numero inteiro(ID)  
Retorna *TODOS*  os dados da View **VerClinicas **  

### Procedures de inserção
Procedures de inserção facilitam o trabalho e garantem que os dados serão inseridos corretamente, **Exemplo** : o Procedure para criação de paciente ja cria um usuario e cria o paciente ja anexado ao usuario. Isso previne que varias pessoas herdem do mesmo usuario 
* **Criar paciente**  
*Parametros* :  
  * Email : Texto (até 200 caracteres)  
  * Senha : Texto (até 200 caracteres)  
  * Nome : Texto (até 200 caracteres)  
  * CPF : Texto (Recomendado numeros) de 11 caracteres  
  * RG : Texto (Recomendado numeros) de 9 caracteres  
  * Telefone : Texto (Recomendado numeros) de 11 caracteres  
  * Data de nascimento : Uma data valida (ano/mes/dia)  

* **Criar medico**  
*Parametros* :  
  * Email : Texto (até 200 caracteres)  
  * Senha : Texto (até 200 caracteres)  
  * Nome : Texto (até 200 caracteres)  
  * CRM : Texto (Recomendado numeros) de 7 caracteres  
  * ID da clinica onde ele trabalha : Numero inteiro (o valor deve corresponder ao id de alguma registro na tabela **Clinica**)  
  * ID da especialidade do medico : Numero inteiro (o valor deve corresponder a algum registro na tabela **Especialidade**)  
   
* **CriarAdmin**
 *Parametros* :  
  * Email : Texto (até 200 caracteres)  
  * Senha : Texto (até 200 caracteres)  

### Procedures do usuario
Você pode criar procedures no arquivo [Procedures_do_usuario.sql](https://github.com/Chingling152/SQL-SPMedgroup/blob/master/UserBuild/Procedures_do_usuario.sql)
# Modelagem
Aqui ficarão os modelos que usei para criar o banco de dados (não faz muito sentido criar modelo para um banco de dados*simples* mas é uma boa pratica (pra não sair codando e errando))
### Modelo descritivo
O Modelo descritivo tem as ligações de ida e volta (use como exemplo ruas, o lado direito é a ida e o esquerdo é a volta ; Exemplo da **Clinica** : Ela possui **N medicos** (ida) e os Medicos podem apenas pertencer a uma **Clinica**)  
PS: ignore o campo admnistrador **Não há tabela para administrador**  
**Medico e o Paciente não referenciam a tabela TipoUsuario** e sim a **Usuario**
![Modelo Conceitual](https://raw.githubusercontent.com/Chingling152/SQL-SPMedgroup/master/Modelos/ModelagemConceitual.png)
### Modelo logico
Aqui está o exemplo do modelo logico do projeto (E o mais fiel ao resultado final)  
Contem todas as tabelas e todas as colunas , as ligações são mostradas atraves das linahs de conexão (não tem ida e volta então fica um pouco dificil entender) porem tem o **PK** (Primary key : *Chave primaria*) e o **FK**(Foreign key : *Chave estrangeira*) assim da para saber qual tabela referencia qual.  
![ModeloLogico](https://raw.githubusercontent.com/Chingling152/SQL-SPMedgroup/master/Modelos/ModelagemLogica.png)
