Algoritmo Cajero_Automatico
	Saldo <- 1000
	Contador <- 1
	Mientras Contador<=5 Hacer
		Escribir 'Ingresa el NIP por favor'
		Leer NIP
		Si NIP=='2102' Entonces
			Contador <- 6
			Respuesta <- 0
			Escribir "BIENVENIDO"
			Mientras Respuesta<>6 Hacer
				Escribir '1 = Consulta de Saldo'
				Escribir '2 = Depositos'
				Escribir '3 = Retiros'
				Escribir '4 = Recargas'
				Escribir '5 = Cambio de NIP'
				Escribir '6 = Salir'
				Leer Respuesta
				Segun Respuesta  Hacer
					1:
						Escribir 'Tu saldo es de: $',Saldo
					2:
						Escribir 'Ingresa la cantidad que quieres depositar'
						Leer Deposito
						Saldo <- Saldo+Deposito
						Escribir 'Tu saldo actual es de: $',Saldo
					3:
						Escribir 'Ingresa la cantidad a retirar'
						Leer Retiro
						Si Retiro>Saldo Entonces
							Escribir 'El saldo es insuficiente'
							Escribir 'Su saldo es de: $',Saldo
						SiNo
							Escribir 'Retiro con exito!!!'
							Saldo <- Saldo-Retiro
							Escribir 'Tu saldo restante es de: $',Saldo
						FinSi
					4:
						Escribir 'Escoge la compañia a la que perteneces'
						Escribir '1 = Telcel'
						Escribir '2 = Movistar'
						Escribir '3 = Nextel'
						Escribir '4 = AT&T'
						Leer Respuesta
						Segun Respuesta  Hacer
							1:
								Escribir 'Ingrese su numero por favor'
								Leer Numero
								Escribir 'Ingresa la cantidad que quieres recargar'
								Leer Recarga
								Si Recarga>Saldo Entonces
									Escribir 'La cantidad de la recarga supera al saldo disponible.'
									Escribir 'Su saldo es de: $',Saldo
								SiNo
									Saldo <- Saldo-Recarga
									Escribir 'Recarga Exitosa!!!'
									Escribir 'La recarga que hiciste fue de: $',Recarga
									Escribir 'Al numero: ',Numero
									Escribir 'El saldo restante es de: $',Saldo
								FinSi
							2:
								Escribir 'Ingrese su numero por favor'
								Leer Numero
								Escribir 'Ingrese la cantidad que quiere recargar por favor'
								Leer Recarga
								Si Recarga>Saldo Entonces
									Escribir 'La cantidad de la recarga es superior al saldo disponible'
									Escribir 'Su saldo es de: $',Saldo
								SiNo
									Saldo <- Saldo-Recarga
									Escribir 'Recarga Exitosa!!!'
									Escribir 'La recarga que hiciste es de: $',Recarga
									Escribir 'Al numero:  ',Numero
									Escribir 'El saldo restante es de: $',Saldo
								FinSi
							3:
								Escribir 'Ingrese su numero por favor'
								Leer Numero
								Escribir 'Ingrese la cantidad que quiere recargar por favor'
								Leer Recarga
								Si Recarga>Saldo Entonces
									Escribir 'La cantidad de la recarga supera al saldo disponible '
									Escribir 'Su saldo es de: $',Saldo
								SiNo
									Saldo <- Saldo-Recarga
									Escribir 'Recarga Exitosa!!!'
									Escribir 'La recarga que hiciste es de: $',Recarga
									Escribir 'Al numero: ',Numero
									Escribir 'El saldo restante es de: $',Saldo
								FinSi
							4:
								Escribir 'Ingrese su numero por favor'
								Leer Numero
								Escribir 'Ingrese la cantidad que quiere recargar por favor'
								Leer Recarga
								Si Recarga>Saldo Entonces
									Escribir 'La cantidad de la recarga supera al saldo disponible'
									Escribir 'Su saldo es de: $',Saldo
								SiNo
									Saldo <- Saldo-Recarga
									Escribir 'Recarga Exitosa!!!'
									Escribir 'La recarga que hiciste es de: $',Recarga
									Escribir 'Al numero: ',Numero
									Escribir 'El saldo restante es de: $',Saldo
								FinSi
						FinSegun
					5:
						Escribir 'A Ingresado al cambio de NIP'
						Escribir 'Ingrese el el NIP anterior por favor: '
						Leer Cambio
						Si Cambio<>NIP Entonces
							Escribir 'El NIP que ingresaste es incorrecto, por favor asegurate de ingresar bien el NIP.'
						SiNo
							Escribir 'Seguro que quieres cambiar de NIP'
							Escribir '1 = Si'
							Escribir '2 = No'
							Leer Respuesta
							Si Respuesta<>1 Entonces
								Escribir 'Ingrese otro NIP'
							SiNo
								Escribir 'Ingresa el nuevo NIP'
								Leer NIPR
								Escribir '¿Estas seguro del nuevo NIP?'
								Escribir '1 = Si'
								Escribir '2 = No'
								Leer Respuesta
								Si Respuesta=1 Entonces
									NIP <- NIPR
									Escribir 'Su NIP ha cambiado exitosamente'
									Escribir 'Ingresa el NIP por favor'
								SiNo
									Escribir 'Ingresa un nuevo NIP'
								FinSi
							FinSi
						FinSi
				FinSegun
			FinMientras
		SiNo
			Si Contador==3 Entonces
				Escribir 'Los tres intentos han sido erroneos'
			SiNo
				Escribir 'El NIP es correcto'
			FinSi
			Contador <- Contador+1
		FinSi
	FinMientras
FinAlgoritmo
