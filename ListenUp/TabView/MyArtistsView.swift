//
//  twoview.swift
//  ListenUp
//

//

import SwiftUI
import CoreData

struct MyArtistsView: View {

    //print("self.userId{}", self.userid)
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Artist.entity(), sortDescriptors: [])
    var artists: FetchedResults<Artist>
    
    @State private var showingSheet = false
   // @State private var showingAddExpense = false
    @Environment(\.presentationMode) var presentationMode:
        Binding<PresentationMode>


    var body: some View {
              
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
                                if findUserArtistLinkMatch(ad:appDelegate,
                                                        username:appDelegate.getUser(),
                                                        artistname: artist.name!) {
                                    VStack {
                                        NavigationLink(destination: SingleArtistView(artist: artist)) {
                                            Image(artist.name!)
                                                .clipShape(Capsule())
                                                .foregroundColor(.white)
                                                .shadow(color: .black, radius: 2)
                                                .shadow(color: .black, radius: 10)
                                                
                                        }.buttonStyle(PlainButtonStyle())
                                    }
                              }
                                                 
                              } //end of for each
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
    func viewDidLoad() {
        

        //let myButton = UIButton()

        print("Joe was here")
        // Load the data
       
    }

}

//struct TwoView_Previews: PreviewProvider {
//    static var previews: some View {
 //       TwoView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
 //   }
//}

// Helper func for getting the current context.
private func getContext(ad: AppDelegate) -> NSManagedObjectContext? {
        return ad.persistentContainer.viewContext
    }

private func findUserArtistLinkMatch(ad: AppDelegate,
                                     username:String,
                                     artistname:String) -> Bool {
    print("here in findUserArtistLinkMatch")
    guard let managedContext = getContext(ad: ad) else { return false }
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "UserArtistLink")
        
        do {
            let result = try managedContext.fetch(fetchRequest) as! [NSManagedObject]
            if result.count > 0 {
                // Assuming there will only ever be one User in the app.
                var i = 0
                while (i < result.count) {
                    let userAlink = result[i]
                    print("i{} u:{} a:{} nm:{} artist:{}", i,
                          username, artistname, userAlink.value(forKey: "username"), userAlink.value(forKey: "artist"))
                    if (userAlink.value(forKey: "username")! as! String == username &&
                            userAlink.value(forKey: "artist")! as! String == artistname) {
                      return true
                    }
  
                    i += 1
                }
                return false
            } else {
                return false
            }
        } catch let error as NSError {
            print("Retrieving userAlink failed. \(error): \(error.userInfo)")
           return false
        }
}

