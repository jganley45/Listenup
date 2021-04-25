//
//  fourview.swift
//  ListenUp
//
//  
//

import SwiftUI
import CoreData

struct FourView: View {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Artist.entity(), sortDescriptors: [])
    var artists: FetchedResults<Artist>
    
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
                                VStack {
                                    NavigationLink(destination: BlankArtistView(artist: artist)) {
                                        Image(artist.name!)
                                            .clipShape(Capsule())
                                            .foregroundColor(.white)
                                            .shadow(color: .black, radius: 2)
                                            .shadow(color: .black, radius: 10)
                                            
                                    }.buttonStyle(PlainButtonStyle())
                                }
                                             
                    }//end of for each
                        //} // end of list
                    }.padding()
                    Divider()
                    Spacer()
                }
                //HostingTabBar()
            }// end of zstack
            .navigationTitle("All Artists")
            .navigationBarHidden(false)
            //.navigationBarBackButtonHidden(true)
            //.navigationBarItems(leading: btnBack)
        } // end of navView

    }
}

struct FourView_Previews: PreviewProvider {
    static var previews: some View {
        FourView()
    }
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}
