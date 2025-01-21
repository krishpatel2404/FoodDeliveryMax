import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .infinity, height: .infinity)
            
            VStack{
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                    .padding(.bottom, 3)
                
                Text("Welcome \nto our Store")
                    .font(.customfont(.semibold, fontSize: 50))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 5)
                
                Text("Get your groceries in no time")
                    .font(.customfont(.medium, fontSize: 17))
                    .foregroundStyle(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                NavigationLink(destination: SignInView()){
                    Text("Get Started")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: 330, minHeight: 0, maxHeight: 60)
                        .background(Color.primaryApp)
                        .cornerRadius(15)
                    
                }
            }.padding(.top, 380)
        }
        .navigationTitle("")
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    WelcomeView()
}
