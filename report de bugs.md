# Report de Bug

#### Cenario 1 - Envio da mensagem ao destinatario

    Dado a uri da api
    quando entrar com a mensagem e o numero do destinatario
    entao a mensagem deve ser enviada apenas uma vez para este numero
    
**Resultado esperado:**

- Envio da mensagem com sucesso

**Resultado obtido:**

- Mensagem enviada com sucesso

**Status:**

- Passou

#### Cenario 2 - Envio da mensagem para o mesmo numero de destinatario do cenario 1

    Dado a uri da api
    Quando entrar com a mensagem e o mesmo numero do cenario 01
    Então a mensagem não deve ser enviada
    
**Resultado esperado:**

- Falha ao enviar a mensagem, o destinatario deve receber apenas **uma mensagem** no mês;

**Resultado obtido:**

- Mensagem enviada com sucesso.

**Status:**

- Falhou.

#### Cenario 3 - Envio da mensagem sem o campo de numero do destinatario

    Dado a URI da api
    Qaundo inserido a mensagem e não inserido o numero do destinatario
    Então a mensagem não deve ser enviada
    
**Resultado esperado:**

- Falha ao enviar a mensagem, campo de número do destinatario é **obrigatorio**.

**Resultado obtido:**

- Numero invalido

**Status:**

- Passou

#### Cenario 4 - Envio da mensagem excedendo o numero de caracteres
    
    Dado a uri da api
    Quando eu inserir o texto excedendo o numero de caracteres
    Então a mensagem não deve ser enviada
    
**Resultado esperado:** 

- Falha ao enviar a mensagem, campo mensagem deve aceitar até **100 caracteres**.

**Resultado obtido:**

- Mensagem enviada com sucesso.

**Status**

- Falhou

#### Cenario 5 - Envio da mensagem com o campo mensagem vazio.

    Dado a URI da api
    Quando eu inserir o numero do destinatario mas nao inserir o campo mensagem
    Então a mensagem nâo deve ser enviada
    
**Resultado esperado:**

- Falha ao enviar a mensagem, o campo mensagem é **obrigatorio**.

**Resultado obtido**

- Mensagem enviada com sucesso

**Status:**

- Falhou

#### Cenario 6 - Envio de mensagem excedendo o limite do campo numero destinatario

    Dado a URI da api   
    Quando eu inserir o numero do destinatario excedendo o limite permitido
    Então a mensagem nao deve ser enviada
    
**Resultado esperado:**

- Falha oa enviar a mensagem, campo numero do destinatario deve ser de **11 digitos**

**Resultado obtido:**

- numero invalido

**Status:**

- Passou 

#### Cenario 7 - Envio de mensagem com o ca mpo numero de destinatario menor que 11 digitos

    Dado a URI da api
    Quando eu inserir o numero de destinatario menor do que 11 digitos
    Então a mensagem não deve ser enviada
    
**Resultado esperado:**

- Falha ao enviar a mensagem, o campo numero de destinatario deve ser de **11 digitos**

**Resultado obtido:**

- numero invalido

**Status:**

- Passou


**Total de Cenarios:** 7

**Cenarios passou:** 4

**Cenarios falhou:** 3

**Bugs encontrados:** 3