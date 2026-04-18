//
//  main.swift
//  Calculadora_1.3final
//
//  Created by Carla Garcia on 08/04/2026.
//


import Foundation
print("SOY VERSION 1.3")
// le digo q si n1 esta vacio o n2 vacio q se salga

//respuesta = "si"

func calculadora(){
    var respuesta = "si"
    let preguntar = ("queres seguir el programa? " )
    while respuesta == "si"{
        print("opcion 1: suma- opcion 2: resta- opcion 3: multiplicacion- opcion 4: division")
        // Fuerzo opcionales (asumo que no son nil)

        let opcion = Int(readLine()!)

        print("colocar el primer numero ")
        // Fuerzo double (asumo que no son nil)
        let n1 = Double(readLine()!)
        print("colocar el segundo  numero ")
        // Fuerzo double (asumo que no son nil)
        let n2 = Double(readLine()!)

        if n1 == nil || n2 == nil{
            print("solo numeros")
            exit(0)
        }
        // aca si lo fuerzo, asumo que no son nil
        let num1 = n1!
        let num2 = n2!

            if (num2 == 1 && opcion == 4){
                print("No se puede dividir por 0")
            }

            var resultado : Double = 0.0
            switch opcion{
            case 1:
               resultado = num1 + num2
            case 2:
                resultado = num1 - num2
            case 3:
                resultado = num1 * num2
            case 4:
                resultado = num1/num2
            // switch tiene que tener la opcion de si se pasa de 4 que pasa? ahi dice q es otro numero
            default:
                print("otro numero")
            }
            // \() para colocar la funcion o variable es como el + en java
            print("Resultado: \(resultado)")
        print(preguntar)
        respuesta = readLine()!
    }
}




func promedio(){
    let pregunta = ("dejar de colocar numeros? si es asi coloca: basta")
    let respuesta2 = "basta"
    var suma = 0.0
    var contador = 0
    while true{
        print("ingrese el numero: ")
        let numero = readLine()!
        print(pregunta)
        if respuesta2 == numero{
            break
        }
        else{
            // de esta forma convierno la misma variable de un str a un double
            //creo el nombre nuevo asignado, y le coloco el tipo que le quiero asignar
            // y adentro va la variable q queria cambiar y que estoy modificando
            //si se puede convertir entra si no, sale
            if  let num = Double(numero){
                suma+=num
                contador+=1
            }
        }
    }
        //debo verificar si contador es mayor a 0 se hace asi no divide por 0
    if contador > 0{
        let promedio = suma/Double(contador)
         print(promedio)
    }
}

// debo DDESCONFIAR de lo que escriba en usuario en un input

func numeroMayor(){
    let preguntar = ("queres seguir colocando numeros? si no es asi coloca: basta")
    let respuesta3 = "basta"
    //para colocar nil debo decir el tipo de variable y si puede o no ser (?)
    var mayor: Int? = nil
    while true{
        print("ingrese numero: ")
        let numero = readLine()!
        print(preguntar)
        if respuesta3 == numero{
            break
        }
        else{
            if let num = Int(numero){
                // coloco que si mayor es nil o numero es > mayor, lo remplazo
                if mayor == nil || num > mayor! {
                    mayor = num
                }
            }
        }
    }
    print(mayor!)
    
}

func Menu(){
    while true{
        print("1: calculadora, 2: promedio, 3: numero mayor")
        let opcion = Int(readLine()!)
        switch opcion{
        case 1:
            calculadora()
        case 2:
           promedio()
        case 3:
            numeroMayor()
        default:
            exit(0)
        }
    }
        
}

Menu()

