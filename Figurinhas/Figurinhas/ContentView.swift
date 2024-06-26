//
//  ContentView.swift
//  Figurinhas
//
//  Created by Paulo Andres Gonzales De Oliveira on 12/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var itensNaColecao: Int = 0
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Mingle")
                .font(.title)
                .bold()
                .padding()
            
            HStack {
                Text("Frase: ")
                    .bold()
                    .padding(.leading)
                
                Text("\"Problema em Dobro\"")
            }
            
            HStack {
    
            Image("figura_01")
                .resizable()
                .scaledToFit()
                .frame(width: 75)
            
                VStack(alignment: .leading) {
                
                HStack{
                    Image(systemName: "lifepreserver")
                        .foregroundColor(.green)
                        .frame(width: 30.0)
                        .font(.system(size: 30))
                    
                    Text("Vidas: ")
                    Text("2")
                        .padding(.trailing)
                }
                
                HStack {
                    Image(systemName: "bolt")
                        .foregroundColor(.yellow)
                        .frame(width: 30.0)
                        .font(.system(size: 30))
                    
                    Text("Potência: ")
                    Text("60%")
                    
                   }
                }
            }
            .padding(30)
            
            HStack {
                Spacer()
                Text("O Mingle se destaca por fazer o dobro do trabalho na metade do tempo, com extrema precisão. Essas habilidades são úteis para ela em sua função de Analista de Dados Sênior para uma empresa internacional de computação em nuvem. Ela também tem uma propensão para dança de salão, dança de linha e praticamente qualquer tipo de atividade que a deixe dançar ao som da música.")
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button {
                    itensNaColecao += 1
                } label: {
                    
                    if itensNaColecao == 0 {
                        Text("Adicionar à coleção")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                    } else {
                        Text("Na sua coleção: \(itensNaColecao)")
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                    }
                }
                .cornerRadius(30)
                Spacer()
            }.padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
