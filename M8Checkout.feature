Funcionalidade: Cadastro para finalizar compra

  Contexto:
    Dado que o cliente está na tela de cadastro do checkout

  Esquema do Cenário: Validação de cadastro com dados inválidos
    Quando o cliente tenta se cadastrar com os seguintes dados:
      | nome        | email              | telefone     | endereço    |
      | <nome>      | <email>            | <telefone>   | <endereco>  |
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | nome     | email               | telefone     | endereco     | mensagem                                     |
      | João     | joaoemail.com       | 11999999999  | Rua A, 123   | Email inválido                               |
      | Maria    | maria@exemplo.com   | 11999999999  |              | Preencha todos os campos obrigatórios        |
      |          | jose@exemplo.com    |              | Rua B, 456   | Preencha todos os campos obrigatórios        |

  Cenário: Cadastro com todos os dados válidos
    Quando o cliente preenche todos os campos obrigatórios corretamente
    E clica em "Finalizar cadastro"
    Então o cadastro deve ser concluído com sucesso
