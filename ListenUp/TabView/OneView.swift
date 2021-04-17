//
//  oneview.swift
//  ListenUp
//

//

import SwiftUI

struct OneView: View {
    @State private var showingSheet = false
    var body: some View {
       
        NavigationView{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            ScrollView{
           
                VStack(spacing:15) {
                    Divider()
                    ScrollView(.horizontal) {
                        
                        HStack(spacing: 10) {
                            
                            VStack {
                                NavigationLink(destination: AriView()) {
                                   Capsule1H()
                                }.buttonStyle(PlainButtonStyle())
                            }
                            
                            VStack {
                                NavigationLink(destination: KimView()) {
                                   Capsule2H()
                                }.buttonStyle(PlainButtonStyle())
                            }
                            
                            VStack {
                                VStack {
                                    NavigationLink(destination: JojiView()) {
                                       Capsule3H()
                                    }.buttonStyle(PlainButtonStyle())
                                }
                        }
                            VStack {
                                Button(action: {
                                        self.showingSheet.toggle()
                                }) {Capsule4H()}
                                .sheet(isPresented: $showingSheet) {
                                        ThirdView()
                                }
                            }
                            
                            VStack {
                                Button(action:  {
                                    print("b2 tapped")
                                }) {
                                    Capsule5H()
                                    }
                                }
                            
                            VStack {
                                
                                Button(action:  {
                                    print("b3 tapped")
                                }) {
                                    Capsule6H()
                                    }
                                }
                            VStack {
                                Button(action:  {
                                    print("Ariana Grande")
                                }) {
                                    Capsule7H()
                                }
                                }
                            VStack {
                                Button(action:  {
                                    print("b2 tapped")
                                }) {
                                    Capsule8H()
                                    }
                                }
                            VStack {
                                
                                Button(action:  {
                                    print("b3 tapped")
                                }) {
                                    Capsule9H()
                                    }
                                }
                        }.padding()//end of hstack
                        
                    }//.frame(height: 100) //scroll view horizontal
            Divider()
            Spacer()
                .frame(minHeight: 0, maxHeight: 70)
            
            
            
            
            
            ScrollView(.horizontal){
                
                HStack(spacing: 10) {
                    
                    VStack {
                        NavigationLink(destination: ThreeView()) {
                           NewRelease()
                        }.buttonStyle(PlainButtonStyle())
                    }
                    
                    VStack {
                        NavigationLink(destination: AriView()) {
                           Positions()
                        }.buttonStyle(PlainButtonStyle())
                    }
                    
                    VStack {
                        VStack {
                            NavigationLink(destination: JojiView()) {
                               Weekend()
                            }.buttonStyle(PlainButtonStyle())
                        }
                }
                    VStack {
                        VStack {
                            NavigationLink(destination: JojiView()) {
                               Mariah()
                            }.buttonStyle(PlainButtonStyle())
                        }
                }

                }.padding()//end of hstack
                
            }
            
            Divider()
            Spacer()
                .frame(minHeight: 0, maxHeight:80)
            
            
            
            
            
            
            
           // ScrollView {
                HStack(spacing:30
                ){
                VStack(spacing: 40) {
                    ForEach(0..<5) {
                        Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.title2)
                            .frame(width: 160, height: 90)
                            .background(Color.categories)
                            .cornerRadius(5)

                    }
                    
                }
                VStack(spacing: 40) {
                    ForEach(0..<5) {
                        Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.title2)
                            .frame(width: 160, height: 90)
                            .background(Color.categories)
                            .cornerRadius(5)
                    }
                    
                }
                }
//
             
            //}
                    Divider()
                    Spacer()
                        //.frame(minHeight: 0, maxHeight: 25)
                }
            } //end
        }//ends of zstack
        .navigationBarHidden(true)
        }
        
        
    }
}


struct OneView_Previews: PreviewProvider {
    static var previews: some View {
        OneView()
    }
}
