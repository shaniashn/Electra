//
//  ContentView.swift
//  practice1
//
//  Created by Nibras Fitri Zuhra on 31/03/23.
//

import SwiftUI

struct BudgetingPlan: View {
    var body: some View {
        VStack {
            VStack{
                Text("Atur Budgetmu")
                    .padding(.top, 10)
                    .font(.headline)
                    .foregroundColor(Color.white)
            }
            
            VStack{
                Spacer()
                ZStack {
                    RadialGradient(gradient: Gradient(colors: [.white.opacity(0.3),CustomColor.boxColor]), center:.center, startRadius: 0, endRadius: 140)
                    Image("cash_wallet")
                }
                Spacer()
            }
            ZStack{
                Color.white.cornerRadius(32).ignoresSafeArea()
                VStack (spacing: 64){
                    VStack{
                        Grid(alignment: .leading){
                            GridRow{
                                Text("Budget")
                                    .font(.system(size: 15, weight: .medium))
                                    .foregroundColor(CustomColor.textColor)
                                TextField("Target Tagihan Listrik/Bulan", text: .constant(""))
                                    .font(.system(size: 15, weight: .regular))
                                    .overlay(
                                        VStack{Divider().offset(x: 0, y: 15)})
                            }
                            .padding(.horizontal, 32)
                            .padding(.bottom, 22)
                            GridRow{
                                Text("Tarif")
                                    .font(.system(size: 15, weight: .medium))
                                    .foregroundColor(CustomColor.textColor)
                                TextField("Tarif Listrik/kWh", text: .constant(""))
                                    .font(.system(size: 15, weight: .regular))
                                    .overlay(VStack{Divider().offset(x: 0, y: 15)})
                            }
                            .padding(.horizontal, 32)
                        }
                    }

                    VStack{
                        Button("Simpan")
                        {
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: 58)
                        .background(CustomColor.boxColor)
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .cornerRadius(8)
                    .padding(.horizontal, 32)
                    }
                }
                
            }
        }.background(
            CustomColor.boxColor
            )
        
    }
}

struct CustomColor {
    static let boxColor = Color("Box")
    static let boxColor1 = Color("Box 1")
    static let textColor = Color("text Color")
}

struct BudgetingPlan_Previews: PreviewProvider {
    static var previews: some View {
        BudgetingPlan()
    }
}
