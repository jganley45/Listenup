//
//  fourview.swift
//  ListenUp
//
//  
//

import SwiftUI


struct FourView: View {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
             NavigationLink(destination: UserArtistView(username: appDelegate.getUser())) {
              }.buttonStyle(PlainButtonStyle())
        }
        .navigationTitle("All Artists")
        .navigationBarHidden(false)
        
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
