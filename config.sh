#!/bin/bash
#Proyecto 2020-2021
#https://github.com/oscarsanchezt
#creado por Osososo




clear

apt install pv -y > /dev/null 2>&1

trap creadores INT
creadores() {
	clear
sleep 0.5
		echo ""
		echo -e "				\e[91mHa pulsado Ctrl+c\e[0m "
		echo""
		printf "			    \e[31mSALIENDO A LA TERMIANL...\e[0m    " |pv -qL 12
		echo""
		
	printf ""
	sleep 1
	clear
	exit
}

menu() {
printf ""

echo -e "
\e[93m       ___ _____    ___  _  ____   ______    ___  \e[0m   
\e[93m      /  ] |    \  |  T  T |    \ |      T  /   \  \e[0m \e[91m ██████╗ ██╗  ██╗\e[0m
\e[93m     /  /  |  D  ) |  |  | |  o  )|      | Y     Y \e[0m \e[91m██╔════╝ ██║  ██║\e[0m
\e[93m    /  /   |    /  |  ~  | |   _/ l_j  l_j |  O  | \e[0m \e[91m███████╗ ███████║\e[0m
\e[93m   /   \_  |    \  l___, | |  |     |  |   |     | \e[0m \e[91m██╔═══██╗╚════██║\e[0m
\e[93m   \     | |  .  Y |     ! |  |     |  |   l     ! \e[0m \e[91m╚██████╔╝     ██║\e[0m
\e[93m    \____j l__j\_j l____/  l__j     l__j    \___/  \e[0m  \e[91m╚═════╝      ╚═╝\e[0m
                                                    \e[1mCreado por Osososo\e[0m
"


echo -e "  		\e[96m╔══════════════════════════════════════╗\e[0m "
echo -e "  		\e[96m║                \e[91m\e[1mMENU\e[0m                  \e[96m║\e[0m "
echo -e "  		\e[96m║                                      ║\e[0m "
echo -e "      		\e[96m║ [1] \e[1mCodificar Texto En Base64\e[0m        \e[96m║\e[0m "         
echo -e "      		\e[96m║ [2] \e[1mDescodificar Texto En Base64\e[0m     \e[96m║\e[0m "
echo -e "      		\e[96m║ [3] \e[1mCodificar Archivo En Base64\e[0m      \e[96m║\e[0m "
echo -e "      	 	\e[96m║ [4] \e[1mDescodificar Archivo En Base64\e[0m   \e[96m║\e[0m "
echo -e "      		\e[96m║ [5] \e[1mSalir a la TERMINAL\e[0m              \e[96m║\e[0m "
echo -e "      		\e[96m╚══════════════════════════════════════╝\e[0m "
printf ""
printf ""

}

pregunta() {

echo ""

printf "                \e[106m\e[30mSELECCIONE OPCION [1-5]\e[0m \e[96m➜ \e[0m"

read opcion

}

error() {
		echo""
        echo -e "                \e[91m⊗   ERROR!\e[0m \e[1mREINICIADO...\e[0m"
        echo""

        sleep 1

        clear
}

#opcion1

menu

pregunta

if [ "$opcion" == "1" ]; then
	echo""
	printf "		\e[92m[INICIANDO MODULO 1]\e[0m   " |pv -qL 12
sleep 1
	clear
	echo -e "           	\e[101m\e[97m\e[1m[ESTAS EN EL MODULO 1]\e[0m"
echo -e ""
	printf "		\e[36m\e[4mIngrese el Texto a Ofuscar:\e[0m "

	read -r ofuscar

	sleep 1
	#modulo de carga 1 // de ofuscaion cargador
	echo""
echo -e "              \e[5m\e[91mADVERTENCIA!\e[0m NO TOCAR NINGUNA TECLA"
echo""
function ProgressBar {

	let _progress=(${1}*100/${2}*100)/100
	let _done=(${_progress}*4)/10
	let _left=40-$_done
	#carga bar >> 100%
	_done=$(printf "%${_done}s")
	_left=$(printf "%${_left}s")

printf " \r \e[102m\e[30mProgreso\e[0m: \e[91m║\e[0m${_done// /█}${_left// / }\e[91m║\e[0m (${_progress}%%) " ""

}

_start=1 
_end=100

for number in $(seq ${_start} ${_end})

do
	sleep 0.1
	ProgressBar ${number} ${_end}
done
echo""

printf '                          \e[93mFinalizado!\e[0m'
echo""
	#fin
	sleep 0.5
		echo""
	printf "		\e[36m\e[4mResultado del Texto Ofuscado:\e[0m "
	sleep 1
	printf "$ofuscar"|base64
		echo""
	sleep 1
	printf "		\e[36m\e[4mPresiona\e[0m \e[1m\e[91mENTER\e[0m \e[36m\e[4mPara Continuar...\e[0m"
	sleep 1.5
	read -r
	source 'config.sh'

elif [ "$opcion" == "2" ]; then
	echo -e "\n"
		printf "		\e[92m[Iniciando Modulo 2]\e[0m" |pv -qL 12
			
				clear
			
		echo -e "           	\e[101m\e[97m[ESTAS EN EL MODULO 2]\e[0m"
		echo""
        printf "		\e[36m\e[4mTexto a Desofuscar:\e[0m "

	read -r desofuscar
        sleep 1

	#fin
echo""
echo -e "              \e[5m\e[91mADVERTENCIA!\e[0m NO TOCAR NINGUNA TECLA"
echo""
function ProgressBar {

	let _progress=(${1}*100/${2}*100)/100

	let _done=(${_progress}*4)/10

	let _left=40-$_done
	_done=$(printf "%${_done}s")

		_left=$(printf "%${_left}s")

printf " \r \e[102m\e[30mProgreso\e[0m: \e[91m║\e[0m${_done// /█}${_left// / }\e[91m║\e[0m (${_progress}%%) " ""

}

_start=1 
_end=100

for number in $(seq ${_start} ${_end})

do
	sleep 0.1
	ProgressBar ${number} ${_end}
done
echo""

printf '                          \e[93mFinalizado!\e[0m'

#fin

echo""
    echo""
        	sleep 1
        printf "		\e[36m\e[4mTexto Desofuscado:\e[0m "
        	sleep 1
        printf "$desofuscar" |base64 -d

	echo ""

        	sleep 1
        	echo""
        printf "		\e[36m\e[4mPresiona\e[0m \e[91m\e[1mENTER\e[0m \e[36m\e[4mPara Continuar...\e[0m "
        	sleep 1.5
        read -r
        source 'config.sh'

elif [ "$opcion" == "3" ]; then
		echo -e "\n"
	printf "		\e[92m[Iniciando Modulo 3]\e[0m" |pv -qL 12
		echo ""
	clear 
		echo ""
	echo -e "           	\e[101m\e[97m[ESTAS EN EL MODULO 3]\e[0m"
		echo ""                                                         
	printf "		\e[36m\e[4mArchivo a Ofuscar:\e[0m "
        read -r ofuscar
       sleep 1
        echo""
	printf "		\e[36m\e[4mIngrese Nuevo Nombre de Archivo Ofuscado:\e[0m "
	read -r nameofuscado
	sleep 2
		echo ""
	#printf "Encriptando" | cargador //
	echo""
echo -e "              \e[5m\e[91mADVERTENCIA!\e[0m NO TOCAR NINGUNA TECLA"
echo""
function ProgressBar {

	let _progress=(${1}*100/${2}*100)/100
	let _done=(${_progress}*4)/10
	let _left=40-$_done
	_done=$(printf "%${_done}s")
	_left=$(printf "%${_left}s")

printf " \r \e[102m\e[30mProgreso\e[0m: \e[91m║\e[0m${_done// /█}${_left// / }\e[91m║\e[0m (${_progress}%%) " ""

}

_start=1 
_end=100

for number in $(seq ${_start} ${_end})

do
	sleep 0.1
	ProgressBar ${number} ${_end}
done
echo""

printf '                          \e[93mFinalizado!\e[0m'
echo""
    echo""
	#fin             
		sleep 4
	touch $nameofuscado
	base64 $ofuscar > $nameofuscado
	mv $nameofuscado 'ofuscados/'


	echo ""

	#mv(mover) config.sh/ofuscados/ !desv

        printf "		\e[36m\e[4mEl Archivo Se Encuentra en:\e[0m \e[95m/Crypto64/Ofuscado\e[0m"
        sleep 1
	echo ""
	echo""
        printf "		\e[36m\e[4mPresiona\e[0m \e[1m\e[91mENTER\e[0m \e[36m\e[4mPara Continuar...\e[0m"                
	sleep 1.5                                                                     
	read -r
        source 'config.sh'

elif [ "$opcion" == "4" ]; then

		printf "		\e[92m[Iniciando Modulo 4]\e[0m" |pv -qL 12
		echo ""
	clear 
	echo -e "           	\e[101m\e[97m\e[1m[ESTAS EN EL MODULO 4]\e[0m"
	echo -e "\n"
	printf "		\e[36m\e[4mArchivo a Desofuscar:\e[0m "                    
	read -r desoofuscar                                                                               
	sleep 1
	echo""                                                                                       
	printf "		\e[36m\e[4mIngrese Nuevo Nombre de Archivo Desofuscado:\e[0m "
        read -r namedesofuscado
        sleep 2                                                                                       
	#fin
	echo""
echo -e "              \e[5m\e[91mADVERTENCIA!\e[0m NO TOCAR NINGUNA TECLA"
	echo""
function ProgressBar {

	let _progress=(${1}*100/${2}*100)/100
	let _done=(${_progress}*4)/10
	let _left=40-$_done
	_done=$(printf "%${_done}s")
	_left=$(printf "%${_left}s")

printf " \r \e[102m\e[30mProgreso\e[0m: \e[91m║\e[0m${_done// /█}${_left// / }\e[91m║\e[0m (${_progress}%%) " ""

}

_start=1 
_end=100

for number in $(seq ${_start} ${_end})

do
	sleep 0.1
	ProgressBar ${number} ${_end}
done
echo""

printf '                          \e[93mFinalizado!\e[0m'
echo""
    echo""
	#fin
	sleep 2
        touch $namedesofuscado
        base64 -d $desoofuscar > $namedesofuscado
    #base64 -d $desoofuscar > $namedesofuscado
	#rm $desoofuscar 
        mv $namedesofuscado 'desofuscados/'

       #$namedesofuscado config/desofuscados/ desv

        printf "		\e[36m\e[4mEl Archivo Se Encuentra en:\e[0m \e[95m/Crypto64/desofuscados\e[0m"
        sleep 1
        echo ""
        echo ""
        printf "		\e[36m\e[4mPresiona\e[0m \e[1m\e[91mENTER\e[0m \e[36m\e[4mPara Continuar...\e[0m"
        sleep 1
        read -r
        source 'config.sh'

elif [ "$opcion" == "5" ]; then
		echo -e ""
	echo -e "		\e[36m\e[4mCreated by :Osososo\e[0m"
		echo""
	echo -e "		\e[36m\e[4mEnlace a mi Repositorio:\e[0m \e[91m\e[4mhttps://github.com/oscarsanchezt\e[0m"
	echo -e ""
		sleep 1
	exit

else
		error
	source 'config.sh'	
fi
#fin //
#lin 345 code $$ end/bash