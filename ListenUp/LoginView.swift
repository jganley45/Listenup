//
//  ContentView.swift
//  ListenUp
//
//  
//

import SwiftUI
import CoreData



//let storedUsername = "JV"
//let storedPassword = "JV"
func validateUser(user: User, name: String, password: String) -> Bool {
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
                                .foregroundColor(.white)
                
            }
            Button(action: {
                           print("JG6 {} {}", self.username, self.password)
                           print(users)
                           for user in users {
                               print("JG44444 {}", user)
                    if validateUser(user:user, name:self.username, password:self.password)
                    {
                        print("PP1")
                        self.authenticationDidSucceed = true
                        self.authenticationDidFail = false
                        appDelegate.setUser(user:user.name!)
                        appDelegate.setUserId(id: Int(bitPattern: user.id))
                        break
                    }else {
                        print("PP2")
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


