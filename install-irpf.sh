sudo rm -Rf /opt/irpf*
sudo rm -Rf /usr/share/applications/irpf*.desktop

wget http://downloadirpf.receita.fazenda.gov.br/irpf/2018/irpf/arquivos/IRPF2018-1.4.zip -O irpf.zip

sudo unzip irpf.zip -d /opt/
sudo mv /opt/IRPF*/ /opt/irpf
sudo cp irpf-icon.png /opt/irpf/irpf.png

sudo cp irpf-link.desktop /usr/share/applications/irpf.desktop
sudo chmod +x /usr/share/applications/irpf.desktop

rm -Rf irpf.zip
