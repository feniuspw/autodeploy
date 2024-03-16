# autodeploy
Repositório para aprender a configurar o github actions

---
### 1. Crie o arquivo deploy.yaml na mesma configuração de pastas
### 2. Configure as secrets no seu repositório indo na aba Settings -> Secrets and variables -> Actions
  - HOST -- IP ou domínio do seu servidor
  - SSH_KEY -- Chave ssh privada de algum dispositivo que já tenha acesso ao servidor via ssh
	  - Exemplo: Adicionei uma chave ssh para acessar o servidor através do meu computador. Essa mesma chave (só que a privada), deverá ser registrada no secret SSH_KEY para acessar o servidor com sucesso.
### 3. Gere uma chave ssh dentro do seu servidor e adicione a chave pública nas configurações da sua conta do github (não no repositório).
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
### 4. Entre previamente no servidor e faça um git clone do projeto manualmente para adicionar o host em algo tipo uma lista de permissões de acesso.
---
O deploy deve funcionar normalmente agora.
Altere o final do arquivo deploy.yaml com as configurações necessárias para o deploy do seu projeto (desligar serviço, atualizar variável de ambiente, sei lá. O que você quiser)

Obs: se quiser pode transferir os passos no final do arquivo deploy.yaml para um script separado e no deploy yaml chamar somente algo como
```
sh deploy.sh
```

Lembrete: Se perceber que algo deste tutorial está desatualizado ou não está funcionado, faça o favor de atualizar este readme Leonardo. Você sofre horas e horas cada vez que vai tentar fazer este procedimento. 5 minutos atualizando a solução te poupam horas de dor de cabeça no futuro =D

Não precisa agradecer. Do Leonardo do passado ao Leonardo do futuro.
16/03/2024
