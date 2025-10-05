#!/bin/bash

# Questão 1 - Adicionando os novos grupos
sudo addgroup aluno
sudo addgroup professor
sudo addgroup gerente

#Questão 2 - Criação da pasta /srv e seu Dono
mkdir /srv
sudo chown root:gerente /srv

#Questão 3 - Criação das outras pastas dos grupos
mkdir /srv/alunos
mkdir /srv/professores

sudo chown root:aluno /srv/alunos
sudo chown root:professor /srv/professores

#Questão 4 - Configuração das permissões
#/srv -> Dono: ker, escrever e exec. -> 4+2+1=7
#		Grupo: ler e exec -> 4+1=5
#		Outros: exec -> 1
chmod 751 /srv
#/srv/alunos -> Dono: ler, escrever e exec. -> 4+2+1=7
#		Grupo: ler, escrever e exec -> 4+1=5
#		Outros: nada -> 0
chmod 770 /srv/alunos
#/srv/professores -> mesma coisa do alunos
chmod 770 /srv/professores

#Questão 5 - Adicionando usuário bruno com grupo professor e pasta home definida
adduser --ingroup professor --home /srv/professores/bruno --gecos "" --disabled-login bruno

#Questão 6 - Grupos secundários do Bruno
sudo usermod bruno -a -G gerente

#Questão 7 - João e Maria como alunos
sudo adduser --ingroup aluno --home /srv/alunos/joao --gecos "" --disabled-login joao
sudo adduser --ingroup aluno --home /srv/alunos/maria --gecos "" --disabled-login maria

#Questão 8 - Data de validade para o usuário e sua senha
usermod joao -e 2051-04-25 -f 90
usermod maria -e 2051-04-25 -f 90
