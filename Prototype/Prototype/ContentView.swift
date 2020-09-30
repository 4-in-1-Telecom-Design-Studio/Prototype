//
//  ContentView.swift
//  Prototype
//
//  Created by Charlithia Palmer on 7/20/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Home()
    }
}

struct Home: View {
    // Slider
    // Sample Slider Value
    @State var value: CGFloat = 50
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button(action: {}, label: {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.all)
                            .background(Color("Color"))
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        // Adding Neuromorphic Effect
                            .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                           // .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                        
                            .shadow(color: Color("Color1").opacity(0.6), radius: 10, x: 4, y: 2)
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.all)
                            .background(Color("Color"))
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                           // .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                        
                            .shadow(color: Color.white.opacity(0.5), radius: 9, x: 4, y: 2)
                    })
                    
                }
                Text("Now Playing")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            
            // Track Image
            Image("Youngboy NBA")
                .resizable()
                .aspectRatio(contentMode: .fit)
            // Automatic height adjustment when space isn't available
                .padding(.horizontal, 25)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.all, 8)
                .background(Color("Color").opacity(0.6))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(color: Color.black.opacity(0.35), radius: 8, x: 8, y: 8)
               // .shadow(color: Color.white, radius: 10, x: -10, y: -10)
                .padding(.top, 35)
            
                .shadow(color: Color.white.opacity(0.45), radius: 10, x: 4, y: 2)
            
            // Music Details
            Text("Scars")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding(.top, 25)
            
            Text("Youngboy Never Broke Again")
                .font(.caption)
                .foregroundColor(.white)
                .padding(.top, 8)
            
            // Timings
            
            HStack{
                Text("0: 00")
                    .font(.caption2)
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("-2: 33")
                    .font(.caption2)
                    .foregroundColor(.white)
            }
            .padding(.top, 25)
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                
                Capsule()
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 6)
                
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .center)) {
                   
                    Capsule()
                        .fill(Color("Color1").opacity(0.6))
                        .frame(width: value, height: 6)
                    
                        // Drag Button
                    Circle()
                        .fill(Color("Color1").opacity(0.7))
                        .frame(width: 10, height: 10)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 10)
                        .background(Color("Color"))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        // Adding Shadow
                        .shadow(color: Color("Color1").opacity(0.6), radius: 10, x: 4, y: 2)
                       
                }
            })
            // Adding Gesture
            .gesture(DragGesture().onChanged({ (value) in
                
            // Tracking Location
            
            // Limiting Value for Only Slider
                
            // Horizontal Padding
                
                if value.location.x <= UIScreen.main.bounds.width - 30 && value.location.x >= 0{
                 
                    self.value = value.location.x
                    
                }
            }))
            .padding(.top, 8)
            
            // Adding Playback Buttons
            HStack(spacing: 20){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "backward.fill")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.gray)
                        .padding(.all, 25)
                        .background(Color("Color"))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        // Adding Shadow
                        .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                       // .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                        .shadow(color: Color("Color1").opacity(0.6), radius: 10, x: 4, y: 2)
                    
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "pause.fill")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.all, 25)
                        .background(Color("Color1"))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        // Adding Shadow
                        .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                        //.shadow(color: Color.white, radius: 5, x: -5, y: -5)
                        .shadow(color: Color("Color1").opacity(0.6), radius: 10, x: 4, y: 2)
                    
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "forward.fill")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.gray)
                        .padding(.all, 25)
                        .background(Color("Color"))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        // Adding Shadow
                        .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                       // .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    
                        .shadow(color: Color("Color1").opacity(0.6), radius: 10, x: 4, y: 2)
                    
                })
            }
            .padding(.top, 25)
            Spacer()
        }
        .padding(.all)
        .background(Color("Color").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}



#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
