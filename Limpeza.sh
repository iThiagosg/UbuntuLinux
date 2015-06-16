#!/bin/bash

#Limpeza de Arquivos 
#Thiago Guedes

echo "Esvaziando a Lixeira"
sudo rm -rf /home/$USER/.local/share/Trash/files/*
echo 
echo 
echo "Limpando a Pasta TMP"
sudo rm -rf /var/tmp/*
echo 
echo 
echo "Exclusão de Cache do Sistema"
sudo apt-get clean -y
echo 
echo 
echo "Exclusão programas não utilizado no sistema"
sudo apt-get autoremove -y
echo 
echo 
echo "Exclusão de arquivos duplicados"
sudo apt-get autoclean -y 
echo 
echo 
echo "Reparando pacotes quebrados"
sudo dpkg --configure -a ; sudo apt-get install -f
echo 
echo 
echo "Remoção de Pacotes Ófãos do Sistema"
sudo apt-get install deborphan -y && sudo apt-get remove $(deborphan) -y
echo 
echo 
echo "Limpando histórico de comandos"
history -c
echo 
clear
echo "Limpeza Concluída, com Sucesso"
sleep 4
exit
