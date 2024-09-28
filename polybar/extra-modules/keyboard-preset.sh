#!/bin/bash

# Obtener la distribución actual del teclado
layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Mapear distribuciones a etiquetas legibles
case $layout in
us)
	echo "󰌌 EN"
	;;
es)
	echo "󰌌 ES"
	;;
esac
