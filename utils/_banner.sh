#!/bin/bash
#
# Print banner art.

#######################################
# Print a board. 
# Globals:
#   BG_BROWN
#   NC
#   WHITE
#   CYAN_LIGHT
#   RED
#   GREEN
#   YELLOW
# Arguments:
#   None
#######################################
print_banner() {

  clear

  printf "\n\n"

  printf "${GREEN}";
  printf "\n";
  printf "INSTALADOR Z-PRO \n";
  printf "\n";
  printf "Uso limitado a membros da organização Launcher & Co. no Github\n";
  printf "Disponivel apenas para instalação\n";
  printf "Permitido uso pessoal e comercial\n";
  printf "Exceto venda do código.\n";
  printf "\n";
  printf "NÃO REVENDA OU COMPARTILHE COM TERCEIROS ESSA SOLUÇÃO.\n";
  printf "\n";
  printf " © LAUNCHER TECNOLOGIA LTDA ME\n";
  printf "${NC}";

  printf "\n"
}
