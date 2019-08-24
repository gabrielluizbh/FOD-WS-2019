# Script para instala��o do Recurso de compatibilidade de aplicativo do Server Core sob demanda (FOD) - Cr�ditos Gabriel Luiz - www.gabrielluiz.com e www.cooperati.com.br #


# Instsla��o usando o Windows Update.

Add-WindowsCapability -Online -Name ServerCore.AppCompatibility~~~~0.0.1.0 # # Instala o Recurso de compatibilidade de aplicativo do Server Core sob demanda (FOD) usando o Windows Update.


Restart-Computer # Renicie o servidor.


# Instala��o usando ISO.

Install-WindowsFeature File-Services # Instala Fun��o de File Server.

# Observa��es: Ajuda para copiar a ISO do FOD para o servidor.


Mount-DiskImage -ImagePath c:\FOD.iso # Monta a imagem da iso utilizando este comando.

# Observa��es: A ISO foi copiada para unidade c:\ e seu nome alterador para FOD.iso.


Add-WindowsCapability -Online -Name ServerCore.AppCompatibility~~~~0.0.1.0 -Source E:\ -LimitAccess # Instala o Recurso de compatibilidade de aplicativo do Server Core sob demanda (FOD) usando uma ISO que foi montada na unidade E:\.


Restart-Computer # Renicie o servidor.


# Logo abaixo est�o a maioria das op��es que podem ser abertos com o Recurso de compatibilidade de aplicativo do Server Core sob demanda (FOD) instalado.


ncpa.cpl  # Conex�es de Rede.

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

lusrmgr.msc # Usu�rios e Grupos Locais.