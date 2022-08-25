


import UIKit

class WeekView: BaseView {
    
    private let calendar = Calendar.current
    
    private var stackView = UIStackView()
}

extension WeekView {
    
    override func addViews() {
        super.addViews()
       addView(stackView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        let stackViewConstraints = [
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ]
        NSLayoutConstraint.activate(stackViewConstraints)
       
    }
    
    override func setup() {
        super.setup()
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        let weekDays = calendar.shortStandaloneWeekdaySymbols
        weekDays.enumerated().forEach() { index, name in
            let view = WeekDayView()
            view.configureDayView(index: index, name: name)
            stackView.addArrangedSubview(view)
        }
    }
}
