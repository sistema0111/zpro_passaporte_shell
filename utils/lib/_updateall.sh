#!/bin/bash
# Atualização do sistema para múltiplas instalações de zpro.io

#######################################
# Percorre todas as instalações dentro de /home/deployzdg/
# e executa a atualização para cada pasta zpro.io encontrada.
#######################################
update_all_instances() {
  for instance in /home/deployzdg/*/zpro.io; do
    if [ -d "$instance" ]; then
      echo "\n🚀 Atualizando: $instance"
      update_instance "$instance"
    fi
  done
}

#######################################
# Executa a atualização em uma instância específica
# Arguments:
#   $1 - Caminho da instância (ex: /home/deployzdg/install1/zpro.io)
#######################################
update_instance() {
  local INSTANCE_PATH="$1"

  print_banner
  printf "${WHITE} 💻 Atualizando instância em $INSTANCE_PATH...${GRAY_LIGHT}\n\n"

  sleep 2

  sudo su - deployzdg <<EOF
  pm2 stop all
EOF

  sleep 2

  sudo su - root <<EOF
  cp "${PROJECT_ROOT}"/update.zip "$INSTANCE_PATH/.."
EOF

  sleep 2

  sudo su - root <<EOF
  cd "$INSTANCE_PATH/backend" || exit
  rm -rf node_modules dist package.json package-lock.json
EOF

  sleep 2

  sudo su - root <<EOF
  cd "$INSTANCE_PATH/frontend" || exit
  find src -mindepth 1 -not -name 'App.vue' -not -name 'index.template.html' -exec rm -rf {} +
  rm -rf src-pwa public/POSTMAN_v2.json babel.config.js package.json
EOF

  sleep 2

  sudo su - root <<EOF
  cd "$INSTANCE_PATH/.." || exit
  unzip update.zip
  rm -f update.zip
EOF

  sleep 2

  sudo su - deployzdg <<EOF
  cd "$INSTANCE_PATH/backend"
  npm install --force
  npx sequelize db:migrate
EOF

  sleep 2

  sudo su - deployzdg <<EOF
  cd "$INSTANCE_PATH/frontend"
  npm install --force
  export NODE_OPTIONS=--openssl-legacy-provider
  npx quasar build -P -m pwa
EOF

  sleep 2

  sudo su - deployzdg <<EOF
  pm2 restart all
EOF

  sleep 2

  print_banner
  printf "${GREEN} ✅ Atualização concluída para $INSTANCE_PATH${NC}\n"
}