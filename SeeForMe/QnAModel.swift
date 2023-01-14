//
//  QnAModel.swift
//  SeeForMe
//
//  Created by Alanood Al Alsheikh on 17/01/2023.
//

import SwiftUI

struct QnA: Identifiable {
    let question: String
    let answer:String
    let id = UUID()
}
extension QnA {
    static let samples = [
        QnA(question: "Why is my period late?",answer:"there are a lot of underlying issues such as malnurition, stress, and medication"),
        QnA(question: "i have abnormal bleeding",answer:"Causes of unusual bleeding include:Hormonal changes. Changing hormone levels during puberty and perimenopause, the transition to menopause, can cause longer, heavier periods. They can also cause irregular cycles.Endometriosis. This condition happens when the lining of the uterus grows outside of the uterus where it does not belong.Ovarian cysts. Unusual bleeding may be a sign of an ovarian cyst that has ruptured (burst).Cancer, such as uterine, cervical, and ovarian cancer. Any vaginal bleeding after menopause can be a sign of a serious health problem, including ovarian, cervical or uterine cancer."),
        QnA(question: " Irregular periods",answer:"Eating disorders. Irregular or missed periods can be signs of eating disorders, most often anorexia nervosa. But any eating disorder, including bulimia nervosa and binge eating disorder, can cause irregular periods.Thyroid problems, such as hyperthyroidism (hy-pur-THY-roi-diz-uhm). Hyperthyroidism, or overactive thyroid, causes your thyroid to make more thyroid hormone than your body needs. Hyperthyroidism can also cause fewer and lighter menstrual periods than normal.High amounts of prolactin in the blood. This condition is called hyperprolactinemia (hy-pur-pro-LAK-te-nee-me-uh). Prolactin is the hormone that causes breasts to grow during puberty and makes breastmilk after childbirth. It also helps control the menstrual cycle.")
    ]
}

public class QnaViewModel: ObservableObject {
  @Published var QnAs: [QnA] = QnA.samples
}
