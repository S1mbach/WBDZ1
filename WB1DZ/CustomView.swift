import SwiftUI

struct CustomView: View {
    @State var back = false
    
    var body: some View {
        VStack {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 262, height: 271)
                .padding(.top, 45)
            
            Text("Общайтесь с друзьями и близкими легко")
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: .infinity)
                .frame(width: 280, height: 58)
                .multilineTextAlignment(.center)
                .padding(.top, 50)

            Spacer()
            
            Button(action: buttonAction, label: {
                Text("Пользовательское соглашение")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.primary)
                    .padding(.bottom, 18)
            })
            
            ButtonView(buttonAction: {
                back.toggle()
            }, buttonText: "Начать общаться")
                .padding(.bottom, 20)
                .sheet(isPresented: $back) {
                    FlyView(back: $back)
                }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .background(Color("BackgroundColor"))
    }
    
    private func buttonAction() {
    }
}

#Preview {
    CustomView()
}
