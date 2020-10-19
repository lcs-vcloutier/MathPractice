//
//  LottieView.swift
//  MathPractice
//
//  Created by Cloutier, Vincent on 2020-10-19.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    @State var animationNamed:String
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        //Lottie View
        let animationView = AnimationView()
        let animation = Animation.named(animationNamed)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        //END -> Lottie View
        //Constraints
        animationView.translatesAutoresizingMaskIntoConstraints =
            false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo:view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo:view.heightAnchor)
        ])
        //END -> Constraints
        return view
    }
    func updateUiView(_ uiView: UIView, context: Context){
        
    }
    typealias UIViewType = UIView
}
struct LottieView_Previews: PreviewProvider {
    static var previews: some View {
        LottieView(animationNamed: "correct")
    }
}
