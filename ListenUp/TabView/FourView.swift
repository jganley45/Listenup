//
//  fourview.swift
//  ListenUp
//
//  
//

import SwiftUI


struct FourView: View {
    
    var body: some View {
//        ZStack{
//            LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
//                .edgesIgnoringSafeArea(.all)
//                }
            NavigationView {
                List {
                    ForEach(0 ..< 100) {
                          Text("Notification \($0)")
                            .foregroundColor(.white)
                    }.listRowBackground(Color.top)
                    } //.navigationBarTitle("Notifications")
                   .navigationBarTitle("Notifications", displayMode: .inline)
                   .background(NavigationConfigurator { nc in
                        nc.navigationBar.barTintColor = .purple
                        nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
                            })
            }
        
        
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
