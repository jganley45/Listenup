//
//  oneview.swift
//  ListenUp
//

//

import SwiftUI

struct OneView: View {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.managedObjectContext) private var viewContext
   @FetchRequest(entity: Artist.entity(), sortDescriptors: [])
    var artists: FetchedResults<Artist>
    
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
                            //List {
                            //    ForEach(artists) { artist in
//                            VStack {
//                                NavigationLink(destination: AriView()) {
//                                   Capsule1H()
//                                }.buttonStyle(PlainButtonStyle())
//                            }
                            
//                            VStack {
//                                NavigationLink(destination: KimView()) {
//                                   Capsule2H()
//                                }.buttonStyle(PlainButtonStyle())
//                            }
                            
//                            VStack {
//                                VStack {
//                                    NavigationLink(destination: JojiView()) {
//                                       Capsule3H()
//                                    }.buttonStyle(PlainButtonStyle())
//                                }
//                        }
                              //  }//end of foreach
                           // }//end of list
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
                                    print("b12 tapped")
                                }) {
                                    Capsule5H()
                                    }
                                }
                            
                            VStack {
                                
                                Button(action:  {
                                    print("b13 tapped")
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
                                    print("b14 tapped")
                                }) {
                                    Capsule8H()
                                    }
                                }
                            VStack {
                                
                                Button(action:  {
                                    print("b15 tapped")
                                }) {
                                    Capsule9H()
                                    }
                                }
                        }.padding()//end of hstack
                        
                    }//.frame(height: 100) //scroll view horizontal
            Divider()
            Spacer()
                .frame(minHeight: 0, maxHeight: 70)
            
            
            
            
            
//           ScrollView(.horizontal){
//                
//                HStack(spacing: 10) {
//                    
//                    VStack {
//                        NavigationLink(destination: ThreeView()) {
//                           NewRelease()
//                        }.buttonStyle(PlainButtonStyle())
//                    }
//                    
////                    VStack {
////                        NavigationLink(destination: AriView()) {
////                           Positions()
////                        }.buttonStyle(PlainButtonStyle())
////                    }
////                    
////                    VStack {
////                        VStack {
////                            NavigationLink(destination: JojiView()) {
////                               Weekend()
////                            }.buttonStyle(PlainButtonStyle())
////                        }
////                }
////                    VStack {
////                        VStack {
////                            NavigationLink(destination: JojiView()) {
////                               Mariah()
////                            }.buttonStyle(PlainButtonStyle())
////                        }
////                }
//
//                }.padding()//end of hstack
//                
//           }
            
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
        //OneView()
        OneView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

struct ThirdView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var showDetails = false
    
 
    
    var body: some View {
        
//        List(modelData) { weather in
//              HStack {
//                  // 2.
//                  Image(systemName: weather.image)
//                      .frame(width: 50, height: 10, alignment: .leading)
//                  Text("\(weather.temp)º")
//                      .frame(width: 50, height: 10, alignment: .leading)
//                  VStack {
//                      Text(weather.city)
//                  }
//              }.font(.title)
//          }
       
        
           
//            VStack {
//                //background(Color.blue)
//                Image("kim_profile")
//                    //.clipShape(Circle())
//                    .resizable()
//                    .scaledToFit()
//                    .foregroundColor(.black)
//    //            Button(action: {
//    //                print("b3 tapped")
//    //        }) {KimPhoto()}
//    //            .clipShape(Rectangle())
//    //            .foregroundColor(.purple)
//    //            .shadow(color: .black, radius: 2)
//    //            .shadow(color: .black, radius: 10)
//            }

        ZStack {
            LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
           
            //Spacer()
            VStack{
              
                HStack(spacing: 35) {
                    Button(action: {
                        print("bc1 tapped")
                    }) {InstaCapsule(artistLink:"")}
                   
                    Button(action: {
                        print("bc2 tapped")
                    }) {TwitterCapsule(artistLink:"")}
                        
                    Button(action: {
                        print("bc3 tapped")
                    }) {YouTubeCapsule(artistLink:"")}
                }
                Button("Dismiss") {
                    self.presentationMode.wrappedValue.dismiss()
                }
            
                }
            }
           

    
    }
}
