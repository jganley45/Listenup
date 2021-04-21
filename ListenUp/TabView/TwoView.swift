//
//  twoview.swift
//  ListenUp
//

//

import SwiftUI
import CoreData

struct TwoView: View {
    var username: String
    //print("self.userId{}", self.userid)
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.managedObjectContext) private var viewContext
   @FetchRequest(entity: Artist.entity(), sortDescriptors: [])
    var artists: FetchedResults<Artist>
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
                    VStack (spacing:25) {
                        Spacer()
                            .frame(minHeight: 0, maxHeight: 20)
                        HStack(spacing:25) {
                            //List {
                            Spacer()
                                
                              ForEach(artists) { artist in
                               // print("self.userId{}", self.userid)
                               // print("artist.userId{}", artist.userid)
                                //to do fix
                                if artist.username == self.username {
                                    VStack {
                                        NavigationLink(destination: BlankArtistView(artist: artist)) {
                                            Image(artist.name!)
                                                .clipShape(Capsule())
                                                .foregroundColor(.white)
                                                .shadow(color: .black, radius: 2)
                                                .shadow(color: .black, radius: 10)
                                                
                                        }.buttonStyle(PlainButtonStyle())
                                    }
                              }
                            
//                            VStack {
//                                NavigationLink(destination: KimView()) {
//                                   Capsule2()
//                                }.buttonStyle(PlainButtonStyle())
//                            }
                            
//                            VStack {
//                                VStack {
//                                    NavigationLink(destination: JojiView()) {
//                                       Capsule3()
//                                    }.buttonStyle(PlainButtonStyle())
//                                }
//                        }
                        }//end of for each
                            //} // end of list
                        }.padding()
                        Divider()
                        Spacer()
                            //.frame(minHeight: 0, maxHeight: 0)
                        
                        
//                        HStack(spacing: 35) {
//                            VStack {
//                                Button(action: {
//                                        self.showingSheet.toggle()
//                                }) {Capsule4()}
//                                .sheet(isPresented: $showingSheet) {
//                                        ThirdView()
//                                }
//                            }
//
//                            VStack {
//                                Button(action:  {
//                                    print("b2 tapped")
//                                }) {
//                                    Capsule5()
//                                    }
//                                }
//
//                            VStack {
//
//                                Button(action:  {
//                                    print("b3 tapped")
//                                }) {
//                                    Capsule6()
//                                    }
//                                }
//                            }
                        
//                        Spacer()
//                            .frame(minHeight: 0, maxHeight: 25)
//                        HStack(spacing: 35) {
//                            VStack {
//                                Button(action:  {
//                                    print("Ariana Grande")
//                                }) {
//                                    Capsule7()
//                                }
//                                }
//                            VStack {
//                                Button(action:  {
//                                    print("b2 tapped")
//                                }) {
//                                    Capsule8()
//                                    }
//                                }
//                            VStack {
//
//                                Button(action:  {
//                                    print("b3 tapped")
//                                }) {
//                                    Capsule9()
//                                    }
//                                }
//                            }
//                        Spacer();
                    }
                }// end of zstack
                .navigationBarHidden(true)
            }
        }
    }
}


//struct TwoView_Previews: PreviewProvider {
//    static var previews: some View {
 //       TwoView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
 //   }
//}
