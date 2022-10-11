# Script para instalação do Recurso de compatibilidade de aplicativo do Server Core sob demanda (FOD) - Créditos Gabriel Luiz - www.gabrielluiz.com e www.cooperati.com.br #


# Instalação usando o Windows Update.

Add-WindowsCapability -Online -Name ServerCore.AppCompatibility~~~~0.0.1.0 # Instala o Recurso de compatibilidade de aplicativo do Server Core sob demanda (FOD) usando o Windows Update.


Restart-Computer # Reinicie o servidor.


# Instalação usando ISO.

Install-WindowsFeature File-Services # Instala Função de File Server.

# Observações: Ajuda para copiar a ISO do FOD para o servidor.


Mount-DiskImage -ImagePath c:\FOD.iso # Monta a imagem da iso utilizando este comando.

# Observações: A ISO foi copiada para unidade c:\ e seu nome alterador para FOD.iso.


Add-WindowsCapability -Online -Name ServerCore.AppCompatibility~~~~0.0.1.0 -Source E:\ -LimitAccess # Instala o Recurso de compatibilidade de aplicativo do Server Core sob demanda (FOD) usando uma ISO que foi montada na unidade E:\.


Restart-Computer # Renicie o servidor.


# Logo abaixo estão a maioria das opções que podem ser abertos com o Recurso de compatibilidade de aplicativo do Server Core sob demanda (FOD) instalado.


ncpa.cpl  # Conexões de Rede.

inetcpl.cpl # Propriedades de Internet.

mmc.exe # Microsoft Management Console.

eventvwr.msc # Visualizador de eventos.

PerfMon.exe # Monitor de desempenho.

Resmon.exe # Monitor de recursos.

devmgmt.msc # Gerenciador de dispositivos.

Explorer.exe # Explorador de arquivos.

Powershell_ISE.exe # Windows PowerShell ISE.

Diskmgmt.msc # Gerenciamento de disco.

CluAdmin.msc # Gerenciador de Cluster de failover.

lusrmgr.msc # Usuários e Grupos Locais.
