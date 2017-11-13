@cadastrar_usuários
Feature: Cadastrar Novo Usuário PF

Background: 
Dado que eu esteja logado no sistema
E acione a funcionalidade para Cadastrar Novo Usuário

Scenario Outline: Cadastro de Usuário Pessoa Física
E selecione a opção Pessoa Física
E insira todos os dados do Usuário
E os dados sejam válidos
Quando eu acionar a opção Salvar
Então deverá ser exibido a mensagem de sucesso
Mas se houver dados inválido ou não informados
Então deverá exibir mensagem de erro

Examples:
| CPF          | Email              | Senha    |Mensagem                       |
| 57334958047  | user1@user.com.br  | 123456@  |Usuário Cadastrado com sucesso |
| 86365095301  | user2@user.com.br  | 123456@  |CPF inválido                   |
| 18357928048  | user3.com          | 123456@  |Email inválido                 |
| 18357928048  | user3@user.com.br  |          |Campo Senha não preenchido     |


Scenario Outline: Cadastro de Usuário Pessoa Jurídica
E selecione a opção Pessoa Jurídica
E insira todos os dados do Usuário
E os dados sejam válidos
Quando eu acionar a opção Salvar
Então deverá ser exibido a mensagem de sucesso
Mas se houver dados inválido ou não informados
Então deverá exibir mensagem de erro

Examples:
| CNPJ           | Email              | Senha    |Mensagem                       |
| 72334146000184 | user4@user.com.br  | 123456@  |Usuário Cadastrado com sucesso |
| 99560111000209 | user5@user.com.br  | 123456@  |CNPJ inválido                  |
| 20163764000105 | user6.com          | 123456@  |Email inválido                 |
| 20186569000109 | user7@user.com.br  |          |Campo Senha não preenchido     |
