Z-Pro.

ATENÇÂO: Testando a versão 3.1.0.8 = Não atualize enquanto estiver este texto no readme

Nota: Atualizado para a Versão 3.1.0.4, instruções de atualização em changelog da documentação.

O Ciclo de atualização não é o mesmo da Comunidade ZDG, para ter sempre a última versão disponivel assine diretamente com eles por 12x de R$239,70 ou R$2.397,00 à vista com desconto.

Também não há canais de suporte, por não ser uma versão oficial.

Baseado no Whaticket / izing.pro

A comercialização deste código é estritamente proibida. Isentamo-nos de qualquer responsabilidade em caso de utilização para fins distintos do uso final.

Este é um conteúdo exclusivo para usuários membros de nossa organização do Github, qualquer vazamento configura desacordo comercial e perda de acesso a todos os produtos e acessos que disponibilizamos.

Com WhatsApp Baileys, WABA (WhatsApp Business API), Telegram, Messenger, Instagram (Via Hub Notificame) e Voz Sobre IP (VOIP)

===================================================

## CRIAR SUBDOMINIO E APONTAR PARA O IP DA SUA VPS

FRONTEND_URL: appzpro.comunidadezdg.com.br </br>
BACKEND_URL:  apizpro.comunidadezdg.com.br

## CHECAR PROPAGAÇÃO DO DOMÍNIO

https://dnschecker.org/

## Atualizar o servidor ##

```bash
sudo apt -y update && apt -y upgrade
```

## Reiniciar ##

```bash
reboot
```

===================================================

## Documentação ##

```bash
https://zpro.passaportezdg.com.br/
```

===================================================

## Instalador e Código ##

As credencias de acesso agora são randomizadas, não é necessário edita-lás no arquivo config, apenas seu endereço de email.

Para fazer Pull do código consulte no nosso drive as credencias do Github.

```bash
sudo apt install -y git && git clone https://github.com/launcherbr/zpro_passaporte_shell.git zpro_passaporte_shell
```

```bash
cd zpro_passaporte_shell
nano config
```

```bash
cd
```

```bash
sudo chmod +x ./zpro_passaporte_shell/zpro && cd ./zpro_passaporte_shell && sudo ./zpro
```
