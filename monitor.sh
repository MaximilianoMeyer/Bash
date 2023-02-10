#!/bin/bash

# Nome do processo a ser monitorado
process_name="process_to_monitor"

# Verifica a existência do processo a cada 30 segundos
while true; do
  if pgrep -x "$process_name" > /dev/null
  then
    sleep 30
  else
    # Envia a notificação por email
    echo "O processo $process_name parou de funcionar." | mail -s "Atenção: processo interrompido" email@example.com
    break
  fi
done
