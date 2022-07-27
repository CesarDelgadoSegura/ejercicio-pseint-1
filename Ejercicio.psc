Algoritmo Ejercicio
	TAMANO = 1000;
	Dimension corredoresNombre[TAMANO]
	Dimension corredoresTiempo[TAMANO]
	Definir Decision Como Caracter
	Definir mejorTiempo Como Entero
	Definir indiceMejorCorredor Como Entero
	Definir cantidadCorredores Como Entero
	Definir cantidadDeTiempo Como Entero
	Definir DebeDecidir Como Entero
	
	cantidadDeTiempo = 0;
	indiceMejorCorredor = 0;
	mejorTiempo = 100000;
	Decision = 's';
	DebeDecidir = 1;
	
	Para i<-1 Hasta TAMANO Con Paso 1 Hacer
		Si Decision == 's' Entonces
			Mientras Longitud(corredoresTiempo[i]) == 0 O Longitud(corredoresTiempo[i]) == 0 O ConvertirANumero(corredoresTiempo[i]) < 1
				Si Longitud(corredoresNombre[i]) == 0 Entonces
					Escribir "Ingrese nombre del Competidor: ", corredoresNombre[i]
					Leer corredoresNombre[i]
				FinSi
				
				Escribir "Ingrese tiempo de llegada(en minutos) del Competidor: ", corredoresNombre[i]
				Leer corredoresTiempo[i]
				
				Si ConvertirANumero(corredoresTiempo[i]) < 1 Entonces
					Escribir "El tiempo ingresado no puede ser 0 o negativo"
					Leer corredoresTiempo[i]
				FinSi
				
				DebeDecidir = 2;
			FinMientras
			
			Mientras DebeDecidir > 1
				Si DebeDecidir == 2 Entonces
					Escribir "¿Desea ingresar otro Corredor? Escribir S para Si o N para No:"
				SiNo
					Escribir "Debes escribir S o s para si, N o n para No:"
				FinSi
				
				Leer Decision
				
				Si Decision == 'N' O Decision == 'S' O Decision == 'n' O Decision == 's' Entonces
					Si Decision == 's' O Decision == 'S' Entonces
						Decision = 's';
					SiNo
						Decision = 'n';
					FinSi
					
					DebeDecidir = 1;
				Sino
					DebeDecidir = 3;
				FinSi
			FinMientras
		FinSi
	FinPara
	
	Para i<-1 Hasta TAMANO Con Paso 1 Hacer
		Si Longitud(corredoresNombre[i]) > 0 Entonces
			
			cantidadCorredores = cantidadCorredores + 1;
			cantidadDeTiempo = cantidadDeTiempo + ConvertirANumero(corredoresTiempo[i]);
			Si ConvertirANumero(corredoresTiempo[i]) < mejorTiempo Entonces
				
				indiceMejorCorredor = i;
				mejorTiempo = ConvertirANumero(corredoresTiempo[i])
			FinSi
		FinSi
	FinPara
	
	Escribir "El tiempo promedio de toda la carrera es de ", cantidadDeTiempo / cantidadCorredores
	Escribir "La cantidad de corredores que llegaron a la meta es de ", cantidadCorredores
	Escribir "El corredor que obtuvo el primer puesto es ",  corredoresNombre[indiceMejorCorredor], " con una marca de ", corredoresTiempo[indiceMejorCorredor], " minutos"
FinAlgoritmo

