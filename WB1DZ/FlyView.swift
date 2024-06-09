import SwiftUI

struct FlyView: View {
    @Binding var back: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            ButtonView(buttonAction: {
                back.toggle()
            }, buttonText: "Закрыть")
            .padding(.bottom, 20)
        }
        Spacer()
        .padding(.leading, 40)
        .padding(.trailing, 40)
        .background(Color("BackgroundColor"))
    }
}

struct FlyView_Previews: PreviewProvider {
    static var previews: some View {
        FlyView(back: .constant(true))
    }
}
