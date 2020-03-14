# Desafio zappts

O projeto foi realizado com as tecnologias: Ruby, rspec, cucumber, httparty e gherkin.

Os Cenarios de testes para automação reportados no **report de bugs** se encontram na pasta chamada **specification** no arquivo **Cenarios.feature**. Dentro deste arquivo estão os cenarios de testes escritos em gherkin e que consiste nos mesmos cenarios executados nos testes manuais.

A pasta **Step_definitions** contém os codigos de testes automatizados em ruby para cada cenario descrito em gherkin. Cada cenario foi separado em um arquivo diferente referenciado com o proprio numero do cenario em questão

Na pasta **support**, contém um arquivo de nome **env.rb** que consiste as ferramentas importadas e utilizadas para automação dos testes.

Para executar o projeto basta acessar o terminal, e na raiz do projeto executar o comando **cucumber**. Deste modo todos os cenarios serão executados, e podera ser vizualizado no terminal o resultado de cada cenario, e tambem ao final da execução o resultado geral.

O resultado geral da execução deverá ser:

**7 cenarios (3 failed, 4 passed)**

**21 steps(3 failed, 18 passed)**