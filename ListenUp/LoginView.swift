//
//  ContentView.swift
//  ListenUp
//
//  
//

import SwiftUI
import CoreData

/*
struct Capsule1: View {
    
    var name: String = "ariana"
    var image: String = "ariana"
    
    var body: some View {
    
    
        VStack {
            let _ = print("this is good")
            Image("ariana")
                .clipShape(Capsule())
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                .shadow(color: .black, radius: 10)
                
//            name
//               .foregroundColor(.white)
//               .font(.system(size: 17, weight: .bold, design: .default))
         }
    }
     
}

struct Capsule2: View {
    var body: some View {
      //let name = Text("Kim Petras")
        VStack {
            Image("kimberly")
                .clipShape(Capsule())
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                .shadow(color: .black, radius: 10)

//            name
//               .foregroundColor(.white)
//               .font(.system(size: 17, weight: .bold, design: .default))
         }


        }
}
       

struct Capsule3: View {
    let name = Text("Joji")
    
    var body: some View {
        VStack {
            Image("joji")
                .clipShape(Capsule())
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                .shadow(color: .black, radius: 10)

//            name
//               .foregroundColor(.white)
//               .font(.system(size: 17, weight: .bold, design: .default))
         }


        }
}

struct Capsule4: View {
    var body: some View {
      //let name = Text("Daniel Caeser")
        VStack {
            Image("daniel")
                .clipShape(Capsule())
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                .shadow(color: .black, radius: 10)
            
//            name
//               .foregroundColor(.white)
//               .font(.system(size: 17, weight: .bold, design: .default))
        }
    }
}

struct Capsule5: View {
    var body: some View {
        //let name = Text("Dua Lipa")
        VStack {
            Image("dua")
                .clipShape(Capsule())
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                .shadow(color: .black, radius: 10)

//            name
//               .foregroundColor(.white)
//               .font(.system(size: 17, weight: .bold, design: .default))
      }
    }
}

struct Capsule6: View {
    var body: some View {
       // let name = Text("Megan Thee Stallion")
        VStack {
            Image("meg")
                .clipShape(Capsule())
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                .shadow(color: .black, radius: 10)

//            name
//               .foregroundColor(.white)
//               .font(.system(size: 17, weight: .bold, design: .default))
        }
    }
}

struct Capsule7: View {
    var body: some View {
        //let name = Text("Cardi B")
        VStack {
            Image("cardi")
                .clipShape(Capsule())
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                .shadow(color: .black, radius: 10)

//            name
//               .foregroundColor(.white)
//               .font(.system(size: 17, weight: .bold, design: .default))
        }
    }
}

struct Capsule8: View {
    var body: some View {
        //let name = Text("Nicki Minaj")
        VStack {
            Image("nicki")
                .clipShape(Capsule())
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                .shadow(color: .black, radius: 10)

//            name
//               .foregroundColor(.white)
//               .font(.system(size: 17, weight: .bold, design: .default))
        }
    }
}

struct Capsule9: View {
    var body: some View {
        //let name = Text("Billie Eilish")
        VStack {
            Image("billie")
                .clipShape(Capsule())
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                .shadow(color: .black, radius: 10)

//            name
//               .foregroundColor(.white)
//               .font(.system(size: 17, weight: .bold, design: .default))
        }
    }
}



struct Positions: View {
    var body: some View {
        //let name = Text("Billie Eilish")
        VStack {
            Image("positions").resizable()
                .frame(width: 375.0, height: 200.0)
//                //.resizable()
               // .scaledToFit()
        }
    }
}

struct Weekend: View {
    var body: some View {
        //let name = Text("Billie Eilish")
        VStack {
            Image("weekend").resizable()
                .frame(width: 375.0, height: 200.0)
//                //.resizable()
               // .scaledToFit()
        }
    }
}

struct Mariah: View {
    var body: some View {
        //let name = Text("Billie Eilish")
        VStack {
            Image("mariah").resizable()
                .frame(width: 375.0, height: 200.0)
//                //.resizable()
                //.scaledToFit()
        }
    }
}




struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var showDetails = false
    
    var body: some View {
        Button(action: {
            print("b1 tapped")
        }) {KimPhoto()}
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack(spacing: 35) {
                    Button(action: {
                        print("b2 tapped")
                    }) {InstaCapsule(artistLink: "")}
                   
                    Button(action: {
                        print("b6 tapped")
                    }) {TwitterCapsule(artistLink: "")}
                        
                    Button(action: {
                        print("b4 tapped")
                    }) {YouTubeCapsule(artistLink: "")}
                }
                Button("Dismiss") {
                    self.presentationMode.wrappedValue.dismiss()
                }
            
                }
            }
           

    
    }
}
        
    




struct FourthView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var showDetails = false
    var body: some View {
    ZStack {
        LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        VStack{
                
            //Use Form?
            //temp
            Button("Dismiss") {
                self.presentationMode.wrappedValue.dismiss()
                }
            .accentColor(.white)
            }
        }
    
//        Button("Dismiss") {
//            self.presentationMode.wrappedValue.dismiss()
//        }
    }
}
*/


//let storedUsername = "JV"
//let storedPassword = "JV"
func validateUser(user: User, name: String, password: String) -> Bool {
    print("JG1")
        if user.name == name && user.password == password
        {
            print("JG2")
           return true
        }
        
    print("JG3")
    return false
}



// Main
struct LoginView: View {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: User.entity(), sortDescriptors: [])

    var users: FetchedResults<User>
   
    //@State private var showingSheet = false
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    let name2 = Text("Kim Petras")
    let name3 = Text("Joji")
    
   
    var body:   some View {

        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
        
        VStack{
           
            WelcomeText()
            WelcomeImage()
            UsernameTextField(username: $username)
            PasswordSecureField(password: $password)
            
            if authenticationDidFail {
                            Text("Information not correct. Try again.")
                                .offset(y: -10)
                                .foregroundColor(.white)    }
            Button(action: {
                print("JG6 {} {}", self.username, self.password)
                print(users)
                for user in users {
                    print("JG44444 {}", user)
                    if validateUser(user:user, name:self.username, password:self.password)
                    {
                        self.authenticationDidSucceed = true
                        self.authenticationDidFail = false
                        appDelegate.setUser(user:user.name!)
                        appDelegate.setUserId(id: Int(bitPattern: user.id))
                        break
                    }else {
                        self.authenticationDidFail = true
                    }
                }
            })
            {
                LoginButtonContent()
            }
        } // end vstack
        .padding()
        //end of vstack
            if authenticationDidSucceed {

                HostingTabBar()
                //UserArtistView(username: appDelegate.getUser())
                
                //OneView()
                        }
        
        }//end of zstack so end of login
        
        } //end of body
    
    
    
    
}//end of content view


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        LoginView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("ListenUp")
            .font(.largeTitle)
            .fontWeight(.semibold) 
            .padding(.bottom,20)
            .foregroundColor(.white)
    }
}

struct WelcomeImage: View {
    var body: some View {
        Image("billie")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.categories)
            .cornerRadius(15.0)
    }
}

struct UsernameTextField: View {
    @Binding var username: String
    var body: some View {
        return TextField("Username", text: $username)
            .padding()
            .background(Color.white)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    @Binding var password: String
    var body: some View {
        return SecureField("Password", text: $password)
            .padding()
            .background(Color.white)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}


