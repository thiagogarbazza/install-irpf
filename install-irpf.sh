echo "Removendo outras versões do aplicativo"

sudo rm -Rf /opt/irpf
sudo rm -Rf /usr/share/applications/irpf.desktop

echo "Realizar o download do aplicativo"
#wget http://downloadirpf.receita.fazenda.gov.br/irpf/2018/irpf/arquivos/IRPF2018-1.4.zip -O irpf.zip
#wget http://downloadirpf.receita.fazenda.gov.br/irpf/2019/irpf/arquivos/IRPF2019-1.6.zip -O irpf.zip
wget http://downloadirpf.receita.fazenda.gov.br/irpf/2020/irpf/arquivos/IRPF2020-1.5.zip -O irpf.zip

echo "Instalando o aplicativo em /opt/irpf"
sudo unzip irpf.zip -d /opt
sudo mv /opt/IRPF*/ /opt/irpf
sudo cp irpf-icon.png /opt/irpf/irpf.png
sudo chmod -R +r /opt/irpf

echo "Criando link para acessi fácil"
sudo cp irpf-link.desktop /usr/share/applications/irpf.desktop
sudo chmod +rx /usr/share/applications/irpf.desktop

rm -Rf irpf.zip


echo "Instalação concluida com sucesso!"
