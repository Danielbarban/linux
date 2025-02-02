#!/bin/bash

# Mensagem de boas-vindas
echo "Bem-vindo ao script de instalação do servidor web!"

# Solicita confirmação inicial para continuar o script
echo "Este Script instala e configura um servidor web. Deseja continuar? [s/n]"
read RESPOSTA
test "$RESPOSTA" != "s" && exit 1

# Atualiza a lista de pacotes
echo "Atualizando lista de pacotes..."
sudo apt update -y

# Instala servidor Apache
echo "Instalando o servidor web Apache..."
sudo apt install apache2 -y

# Realiza o download do template HTML e o define como pagina padrao do servidor
echo "Baixando template HTML..."
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1vOy-AhdOiRhW5J5eLm1lxAeC5nuTh4HZ' -O /var/www/html/index.html

# Reinicia o serviço Apache
echo "Reiniciando o serviço Apache..."
sudo systemctl restart apache2

# Mensagem de conclusão
echo "Servidor web configurado e em execução! Acesse pelo endereço da máquina."
