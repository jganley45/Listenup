//
//  twoview.swift
//  ListenUp
//

//

import SwiftUI

struct TwoView: View {
    @State private var showingSheet = false
    @State private var showingAddExpense = false
    
    var body: some View {
        //Color.blue
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            //Spacer()
            
//            HStack{
//                Text("Favorites")
//            }
           
        
            NavigationView {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                    VStack(spacing: 20) {
                        Spacer()
                        HStack(spacing: 35) {
                            
                            VStack {
                                NavigationLink(destination: AriView()) {
                                   Capsule1()
                                }.buttonStyle(PlainButtonStyle())
                            }
                            
                            VStack {
                                NavigationLink(destination: KimView()) {
                                   Capsule2()
                                }.buttonStyle(PlainButtonStyle())
                            }
                            
                            VStack {
                                VStack {
                                    NavigationLink(destination: JojiView()) {
                                       Capsule3()
                                    }.buttonStyle(PlainButtonStyle())
                                }
                        }
                        }
                        
                        Spacer()
                            .frame(minHeight: 0, maxHeight: 25)
                        
                        
                        HStack(spacing: 35) {
                            VStack {
                                Button(action: {
                                        self.showingSheet.toggle()
                                }) {Capsule4()}
                                .sheet(isPresented: $showingSheet) {
                                        ThirdView()
                                }
                            }
                            
                            VStack {
                                Button(action:  {
                                    print("b2 tapped")
                                }) {
                                    Capsule5()
                                    }
                                }
                            
                            VStack {
                                
                                Button(action:  {
                                    print("b3 tapped")
                                }) {
                                    Capsule6()
                                    }
                                }
                            }
                        
                        Spacer()
                            .frame(minHeight: 0, maxHeight: 25)
                        HStack(spacing: 35) {
                            VStack {
                                Button(action:  {
                                    print("Ariana Grande")
                                }) {
                                    Capsule7()
                                }
                                }
                            VStack {
                                Button(action:  {
                                    print("b2 tapped")
                                }) {
                                    Capsule8()
                                    }
                                }
                            VStack {
                                
                                Button(action:  {
                                    print("b3 tapped")
                                }) {
                                    Capsule9()
                                    }
                                }
                            }
                        Spacer();
                    }
                }
                .navigationBarHidden(true)
            }
        }
    }
}


struct TwoView_Previews: PreviewProvider {
    static var previews: some View {
        TwoView()
    }
}
