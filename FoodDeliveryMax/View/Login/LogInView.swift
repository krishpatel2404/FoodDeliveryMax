import SwiftUI

struct LogInView: View {
    
    @State var email : String = ""
    @State var password : String = ""
    
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.top, 100)
                
                Text("LogIn")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)
                
                Text("Enter your email and password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 30)
                
                Text("Email")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 3)
                
                TextField("Enter Email", text: $email)
                    .font(.customfont(.semibold, fontSize: 16))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                    .padding(.bottom, 25)
                
                Text("Password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 3)
                
                TextField("Enter Password", text: $email)
                    .font(.customfont(.semibold, fontSize: 16))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                    .padding(.bottom, 15)
                
                Button {
                    
                } label: {
                    Text("Forgot Password?")
                        .font(.customfont(.medium, fontSize: 13))
                        .foregroundColor(.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, 25)

               
                
                HStack {
                    Text("Don't have an account?")
                        .font(.customfont(.semibold, fontSize: 16))
                        .foregroundColor(.primaryText)
                    
                    NavigationLink {
                        SignUpView()
                    } label: {
                        Text("SignUp")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.primaryApp)
                    }
                }
            }
            .padding(.bottom, 190)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            
            VStack{
                HStack{
                    NavigationLink {
                        SignInView()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.top, 60)
            .padding(.horizontal, 20)
        }
        
        .navigationTitle("")
        .navigationBarHidden(true)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    LogInView()
}
