//
//  twoview.swift
//  ListenUp
//

//

import SwiftUI
import CoreData

struct UserArtistView: View {
    var username: String
    //print("self.userId{}", self.userid)
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.managedObjectContext) private var viewContext
   @FetchRequest(entity: Artist.entity(), sortDescriptors: [])
    var artists: FetchedResults<Artist>
    @State private var showingSheet = false
    @State private var showingAddExpense = false
    @Environment(\.presentationMode) var presentationMode:
        Binding<PresentationMode>


    var body: some View {
        //Color.blue
        
//        ZStack{
//            LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
//                .edgesIgnoringSafeArea(.all)
//            //Spacer()
            
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
                                                 
                        }//end of for each
                            //} // end of list
                        }.padding()
                        Divider()
                        Spacer()
                    }
                    //HostingTabBar()
                }// end of zstack
                .navigationTitle("My Artists")
                .navigationBarHidden(false)
                //.navigationBarBackButtonHidden(true)
                //.navigationBarItems(leading: btnBack)
            } // end of navView
        //}
    }
}


//struct TwoView_Previews: PreviewProvider {
//    static var previews: some View {
 //       TwoView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
 //   }
//}
