//
//  HostinTabBar.swift
//  ListenUp
//

//

import SwiftUI



struct HostingTabBar: View {
   
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.managedObjectContext) private var viewContext
   @FetchRequest(entity: Artist.entity(), sortDescriptors: [])
    var artists: FetchedResults<Artist>
  
    @State private var selection = 	1
    
    var body: some View {

        //NavigationView{
        TabView(selection: $selection ) {
            
            MyArtistsView()
                .tag(1)
                .tabItem {
                   Image(systemName: "heart.fill").font(.title)
              }
           
//
//          ThreeView()
//            .tag(2)
//            .tabItem {
//               Image(systemName: "person.3.fill").font(.title)
//          }
            AllArtists()
                  .tag(3)
                  .tabItem {
                     Image(systemName: "bell.fill").font(.title)
                }
            LoginView()
              .tag(4)
              .tabItem {
                 Image(systemName: "lock.fill").font(.title)
              }.navigationBarHidden(true)

        } //.tabViewStyle(PageTabViewStyle()) //end of tab view
        .navigationBarHidden(false)

       }//end of body

//    init() {
//      // let appDelegate = UIApplication.shared.delegate as! AppDelegate
//       let u = appDelegate.getUser()
//        print("user {}", u)
//        for artist in artists {
//            print(artist)
//        }
//    }
}



//struct HostingTabBar_Previews: PreviewProvider {
//    
//    
//    static var previews: some View {
//        HostingTabBar()
//
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//            }
//
//}

