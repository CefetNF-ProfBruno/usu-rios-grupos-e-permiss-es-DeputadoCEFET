[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/D_HjCm9Q)
# TRABALHO: Usuários, grupos, e permissões

## Instruções

1. Os exercícios abaixo deverão ser feitos dentro do terminal do Linux
       
2. Os exercícios estão, em sua maioria, dependentes um dos outros. Ou seja, o segundo depende do primeiro, o terceiro do segundo, e assim sucessivamente. Procure fazê-los na ordem.
       
3. Os comandos executados para cada exercício deverão ser respondidos _em um único script_ chamado _trabalho.sh_!
       
4. O trabalho será corrigido automaticamente.
       
Para saber sua nota, dentro do terminal, execute o script _./corrigir.sh_.

## Enunciado

Vocês irão configurar um pequeno servidor de uma escola:

1. A escola possui os seguintes grupos de usuários: _aluno_, _professor_, e _gerente_

Crie grupos dentro do Linux para representar esses diferentes tipos de usuários.
       
2. Crie a pasta _/srv_, se ela não existir. 
       
Configure o dono e o grupo da pasta como sendo root e gerente, respectivamente.
       
3. Crie 2 pastas: /srv/alunos, /srv/professores
       
Configure os grupos para os grupos do item 1 ( /srv/alunos no grupo aluno e /srv/professores com grupo professor ) e dono root.
       
4. Configure as permissões das pastas dos itens 2 e 3:

+ A pasta _/srv_ deverá possuir permissão de leitura, escrita, e execução para o dono; permissão de leitura e execução para quem for do memso grupo ( gerente ); e apenas permissão de execução para os demais usuários.
      
+ A pasta _/srv/alunos_ deverá possuir permissão de leitura, escrita, e execução para o dono; permissão de leitura, escrita, e execução para quem for membro do mesmo grupo; e nenhuma permissão para qualquer outro usuário.

+ A pasta _/srv/professores_ deverá possuir permissão de leitura, escrita, e execução para o dono; permissão de leitura, escrita, e execução para quem for membro do mesmo grupo; e nenhuma permissão para qualquer outro usuário.
       
5. Adicione o usuário _bruno_ com grupo _professor_ e pasta home em _/srv/professores/bruno_.
       
Nota: para fins de script, passe o parâmetro *--gecos “”*  e *--disabled-login* para que o script não pause esperando entrada do usuário
       
6. Adicione como grupo secundário "gerente" ao usuário "bruno"
       
7. Adicione os usuários _joao_ e _maria_ com grupo _aluno_ e pasta home em _/srv/alunos/[usuario]_, em que usuario é o login do usuário.

Nota: para fins de script, passe o parâmetro *--gecos “”*  e *--disabled-login* para que o script não pause esperando entrada do usuário
       
8. Modifique os usuários _joao_ e _maria_ criados para que a data de expiração das conta seja o dia 25/04/2051 e a senha com validade 90 dias.
