import SwiftUI
import iPhoneNumberField

struct SignInView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) var presentationMode
    @State private var phoneNumber = ""
    @State private var selectedCountry = Country.india
    @State private var showCountryPicker = false
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenWidth)
            
            VStack{
                Image("sign_in_top")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenWidth)
            }
            
            ScrollView{
                VStack{
                    Text("Get your groceries\nwith nector")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 350)
                        .padding(.trailing, 130)
                        .padding(.bottom, 25)
                    
                    HStack{
                        Button(action: {showCountryPicker = true}){
                            HStack{
                                Text(selectedCountry.flag)
                                    .font(.system(size: 22))
                                Text(selectedCountry.dialCode)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                            }
                            .frame(width: 100)
                            .padding(.leading, -20)
                        }
                        .sheet(isPresented: $showCountryPicker){
                            NavigationView {
                                CountryPickerView(selectedCountry: $selectedCountry)
                                    .navigationTitle("Select Country")
                                    .navigationBarTitleDisplayMode(.inline)
                            }
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    SignInView()
}
