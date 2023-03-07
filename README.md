# LINUX PROJETO IaC V2

Este projeto foi desenvolvido durante o curso de Linux da DIO.me e representa a entrega do desafio a seguir.

## Definição do problema proposto pela DIO.me.

Desenvolver um programa em shell script capaz de realizar os seguintes procedimentos.

- Atualizar o Servidor;
- Instalar o apache;
- Instalar o unzip;
- Baixar a aplicação disponível no endereço 
    https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório `/tmp/`;
- Copiar os arquivos do diretório no diretório padrão do apache


### Como executar ?

- Certifique-se de que você tenha feito o clone ou copiado o script para o seu computador. O script deve estar no formato `.sh`.
- A execução pode ser feitas de duas formas.

### 1° opção
```bash
# Se você usar esse modelo de execução será necessário definir algumas permissões.
# execute sudo chmod 700 deploy-site.sh
./deploy-site.sh
```

### 2° opção

```bash
bash deploy-site.sh
```