#!/bin

sep="-----------------------------------"
echo Vamos a comparar los valores esperados y obtenidos del documento /etc/ssh/sshd_config
echo En caso de que los valores obtenidos, no sean los esperados, puedes modificarlos en este documento.


if [ $USER = "root" ]
then
        sol=$(cat /etc/ssh/sshd_config | egrep "MaxStartups")
        if [ "$sol" = "MaxStartups 10:30:60" ]
        then
                echo "El valor esperado es igual que el obtenido"
                echo "$sol"
        else
                echo "El valor obtenido no es el esperado"
                echo "El valor esperado es MaxStartups 10:30:60"
                echo "El obtenido es :"
                echo "$sol"
        fi

        echo "$sep"

        sol=$(cat /etc/ssh/sshd_config | egrep "ClientAliveInterval")
        if [ "$sol" = "ClientAliveInterval 300" ]
        then
                echo El valor es el esperado
                echo "$sol"
        else
                echo El valor no es el esperadp
                echo Valor esperado ClientAliveInterval 300
                echo Valor obtenido "$sol"
        fi

        echo "$sep"

        sol=$(cat /etc/ssh/sshd_config | egrep "ClientAliveCountMax")
        if [ "$sol" = "ClientAliveCountMax 0" ]
        then
                echo El valor es el esperado
                echo $sol
        else
                echo El valor no es el esperadp
                echo Valor esperado ClientAliveCountMax 0
                echo Valor obtenido "$sol"
        fi
        echo $sep
        sol=$(cat /etc/ssh/sshd_config | egrep "MaxAuthTries")
        if [ "$sol" = "MaxAuthTries <=4" ]
        then
                echo El valor es el esperado
                echo $sol
        else
                echo El valor no es el esperadp
                echo Valor esperado "MaxAuthTries <=4"
                echo Valor obtenido "$sol"
        fi

        echo $sep

        sol=$(cat /etc/ssh/sshd_config | egrep "IgnoreRhosts")
        if [ "$sol" = "IgnoreRhosts yes" ]
        then
                echo El valor es el esperado
                echo $sol
        else
                echo El valor no es el esperadp
                echo Valor esperado "IgnoreRhosts yes"
                echo Valor obtenido "$sol"
        fi

        echo $sep

        sol=$(cat /etc/ssh/sshd_config | egrep "HostbasedAuthentication no")
        if [ "$sol" = "HostbasedAuthentication no" ]
        then
                echo El valor es el esperado
                echo $sol
        else
                echo El valor no es el esperado
                echo Valor esperado "HostbasedAuthentication no"
                echo Valor obtenido es:
                cat /etc/ssh/sshd_config | egrep "HostbasedAuthentication"
        fi

        echo $sep

        sol=$(cat /etc/ssh/sshd_config | egrep "PermitEmptyPasswords")
        if [ "$sol" = "PermitEmptyPasswords no" ]
        then
                echo El valor es el esperado
                echo $sol
        else
                echo El valor no es el esperadp
                echo Valor esperado "PermitEmptyPasswords no"
                echo Valor obtenido "$sol"
        fi

        echo $sep

        sol=$(cat /etc/ssh/sshd_config | egrep "PermitRootLogin no")
        if [ "$sol" = "PermitRootLogin no" ]
        then
                echo El valor es el esperado
                echo $sol
        else
                echo El valor no es el esperadp
                echo Valor esperado "PermitRootLogin no"
                echo Valor obtenido :
                cat /etc/ssh/sshd_config | egrep "PermitRootLogin"
        fi




else
        echo "Necesitas permisos de administrador"
fi
