//
//  ContentView.swift
//  Calcular idade canina 2
//
//  Created by COTEMIG on 25/03/25.
//
import SwiftUI



struct ContentView: View {

    @State private var idadeh: String = ""

    @State private var idadehcanina: String = ""

    @State private var erro: Bool = false

    

    func calcularIdade(){

        erro = false

        if let idade = Int(idadeh), idade>0{

            erro = true

            let resultado = idade * 7

            idadehcanina = " o seu animal de estimação possui \(resultado) anos"

        }

        

    }

    var body: some View {

        VStack {

            Image("cachorrao")

                .resizable()

                .frame(width:100,height: 100)

                .foregroundColor(.accentColor)

            Text("Calculadora de idade canina")

                .font(.title)

                .fontWeight(.light)

                .foregroundColor(.black)

            TextField("Digite aqui a idade humana:",

                      text: $idadeh)

            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)

            .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)

            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

            .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)

            Button(action: calcularIdade){

                Text("Calcular")

                    .foregroundColor(.black)

                    .multilineTextAlignment(.center)

                    .padding(.all, 4.0)

                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.499, saturation: 0.825, brightness: 0.888)/*@END_MENU_TOKEN@*/)

                    .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)

                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)

                

                

            }
            Button(action: limpartela){

                Text("Limpar tela")

                    .foregroundColor(.black)

                    .multilineTextAlignment(.center)

                    .padding(.all, 4.0)

                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.499, saturation: 0.825, brightness: 0.888)/*@END_MENU_TOKEN@*/)

                    .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)

                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)

                

                

            }
           
           


            if erro == true {

                Text(idadehcanina)

                    .foregroundColor(.black)

                    .padding()

            } else {

                Text(idadehcanina)

                    .padding()

            }

            

            

        }

        .padding()

        

        

    }

    func limpartela(){
        idadeh = ""
        idadehcanina = ""
    }



    

    

    struct ContentView_Previews: PreviewProvider {

        static var previews: some View {

            ContentView()

        }

    }

}
