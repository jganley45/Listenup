//
//  AddView.swift
//  ListenUp
//
//
//

import SwiftUI
struct BlankArtistView: View {
    var artist: Artist
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
                    }
                }
            }
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
