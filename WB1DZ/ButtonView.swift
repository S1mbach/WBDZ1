import SwiftUI

struct ButtonView: View {
    let buttonAction: () -> Void
    let buttonText: String
    
    var body: some View {
        Button(action: buttonAction) {
            Text(buttonText)
                .font(.system(size: 16, weight: .semibold))
                .frame(width: 327, height: 52)
                .foregroundColor(Color.white)
                .background(Color(red: 154/255, green: 65/255, blue: 254/255))
                .cornerRadius(30)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonAction: {}, buttonText: "Начать общаться")
    }
}
