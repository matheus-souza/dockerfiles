# [Portainer](https://github.com/portainer/portainer) 
## Instalação simplificada
- Criar diretório para o arquivo:
```bash
mkdir -p $HOME/docker/portainer
```
- Realizar o download:
```bash
wget https://gist.githubusercontent.com/matheus-souza/a888eea8902159f690b53aae2005343b/raw/346ac1bff8e9559c4b84abbaaef4378e2c2a4484/docker-compose.yml -O $HOME/docker/portainer/docker-compose.yml
```
- Criar alias em ```~/.bashrc```:
```bash
alias portainer='docker-compose --file $HOME/docker/portainer/docker-compose.yml up -d'
```