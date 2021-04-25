//
//  AddView.swift
//  ListenUp
//
//
//

import SwiftUI
import CoreData

struct SingleArtistView: View {
    var artist: Artist
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
            NavigationView {
 
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                            VStack {
                                
                                Image(artist.name!)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                Text(artist.name!)
                                        .bold()
                                        .font(.system(size: 50))
                                        .foregroundColor(.white)
                               // Spacer()
                            }
                            VStack{
                                HStack(spacing: 35) {
                                    Button(action: {
                                        print("bb1 tapped")
                                    }) {InstaCapsule(artistLink:artist.insta!)}
                                   
                                    Button(action: {
                                        print("bb2 tapped")
                                    }) {TwitterCapsule(artistLink:artist.twitter!)}
                                        
                                    Button(action: {
                                        print("bb3 tapped")
                                    }) {YouTubeCapsule(artistLink:artist.youtube!)}
                                    }
                                }
                                .navigationBarHidden(true)
                        VStack{
                            Button(action: {
                                saveUalink(ad: appDelegate,
                                           artistname:  artist.name!)
                                
                            })
                            {
                                SaveButtonContent()
                            }
                        }
                    }
                } // end ZStack
            }
        }
}

// Helper func for getting the current context.
    private func getContext(ad: AppDelegate) -> NSManagedObjectContext? {
        return ad.persistentContainer.viewContext
    }

func retrieveUser(ad: AppDelegate , username:String) -> NSManagedObject? {
    print("here in retrieveUser")
    guard let managedContext = getContext(ad: ad) else { return nil }
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        
        do {
            let result = try managedContext.fetch(fetchRequest) as! [NSManagedObject]
            if result.count > 0 {
                // Assuming there will only ever be one User in the app.
                var i = 0
                while (i < result.count) {
                    let user = result[i]
                    print("u{} nm{}: pwd{}: phone:{}", i, user.value(forKey: "name"), user.value(forKey: "password"), user.value(forKey: "phone"))
                    if (user.value(forKey: "name")! as! String == username ) {
                      return result[i]
                    }
  
                    i += 1
                }
                return nil
            } else {
                return nil
            }
        } catch let error as NSError {
            print("Retrieving user failed. \(error): \(error.userInfo)")
           return nil
        }
}
    
    //** find matching user
    


func saveObj(ad: AppDelegate) {
    
    print("here in saveObj")
    guard let user = retrieveUser(ad: ad, username: ad.getUser()) else { return }
    guard let managedContext =  getContext(ad: ad) else { return }
    user.setValue("666", forKey: "phone")
    
    do {
        print("Saving user...")
        try managedContext.save()
    } catch let error as NSError {
        print("Failed to save user data! \(error): \(error.userInfo)")
    }

}



func findUserArtistLink(ad: AppDelegate, username:String, artistname:String) -> NSManagedObject? {
    print("here in findUserArtistLink")
    guard let managedContext = getContext(ad: ad) else { return nil }
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "UserArtistLink")
        
        do {
            let result = try managedContext.fetch(fetchRequest) as! [NSManagedObject]
            if result.count > 0 {
                // Assuming there will only ever be one User in the app.
                var i = 0
                while (i < result.count) {
                    let userAlink = result[i]
                    print("u{} nm:{} artist:{}", i, userAlink.value(forKey: "username"), userAlink.value(forKey: "artist"))
                    if (userAlink.value(forKey: "username")! as! String == username &&
                            userAlink.value(forKey: "artist")! as! String == artistname) {
                      return result[i]
                    }
  
                    i += 1
                }
                return nil
            } else {
                return nil
            }
        } catch let error as NSError {
            print("Retrieving user failed. \(error): \(error.userInfo)")
           return nil
        }
}

func saveUalink(ad: AppDelegate, artistname:String) {
    
    print("here in saveUalink")
    guard let userAlink = findUserArtistLink(ad: ad,
                                        username: ad.getUser(),
                                        artistname: artistname)
    else {
        guard let managedContext =  getContext(ad: ad) else {return }
        let userArtistLink = NSEntityDescription.insertNewObject(forEntityName: "UserArtistLink", into: managedContext) as! UserArtistLink

//        var userArtistLink: UserArtistLink = {
//            NSEntityDescription.entity(forEntityName: "UserArtistLink", in: managedContext)!
//            }()
        userArtistLink.username = ad.getUser()
        userArtistLink.artist = artistname
        
        do {
            print("Saving userArtistLink...")
            try managedContext.save()
        } catch let error as NSError {
            print("Failed to save userArtistLink data! \(error): \(error.userInfo)")
        }
     
        return
    }
    // userAlink found, so dont add again
    return
}


struct SaveButtonContent: View {
    var body: some View {
        Text("SAVE")
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.categories)
            .cornerRadius(15.0)
    }
}

//struct BlankArtistView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            BlankArtistView()        }
//    }
//}

struct InstaCapsule: View {
    var artistLink: String
    var body: some View {
        //let name = Text("Billie Eilish")
        VStack {
            Link(destination: URL(string: "https://" + artistLink)!) {
                Image("insta")
            }
//                .clipShape(Capsule())
//                .foregroundColor(.white)
//                .shadow(color: .black, radius: 2)
//                .shadow(color: .black, radius: 10)

//            name
//               .foregroundColor(.white)
//               .font(.system(size: 17, weight: .bold, design: .default))
        }
    }
}

struct TwitterCapsule: View {
    var artistLink: String
    var body: some View {
        //let name = Text("Billie Eilish")
        VStack {
            Link(destination: URL(string: "https://" + artistLink)!) {
                Image("twitter")
            }
             

        }
    }
}

struct YouTubeCapsule: View {
    var artistLink: String
    var body: some View {
        //let name = Text("Billie Eilish")
        VStack {
            Link(destination: URL(string: "https://" + artistLink)!) {
                Image("youtube")
            }
               
                
        }
    }
}

struct KimPhoto: View {
    var body: some View {
        //let name = Text("Billie Eilish")
        VStack {
            Image("kim_profile")
//                //.resizable()
//                .scaledToFit()
        }
    }
}

struct NewRelease: View {
    var body: some View {
        //let name = Text("Billie Eilish")
        VStack {
            Image("new").resizable()
                .frame(width: 375.0, height: 200.0)
//                //.resizable()
            //    .scaledToFit()
        }
    }
}
