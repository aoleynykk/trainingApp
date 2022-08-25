



import UIKit

class WeekDayView: BaseView {
    
    private let dayNameLabel = UILabel()
    
    private let dateLabel = UILabel()
    
    private let stackView = UIStackView()
    
    func configureDayView(index: Int, name: String) {
        let startOfWeek = Date().startWeekDate
        let currentDay = startOfWeek.goForward(to: index)
        let day = Calendar.current.component(.day, from: currentDay)
        
        let isToday = currentDay.stripTime() == Date().stripTime()
        
        backgroundColor = isToday ? Resourses.Colors.selectedColor : .lightGray
        dayNameLabel.text = name.uppercased()
        dayNameLabel.textColor = isToday ? .white : Resourses.Colors.unselectedColor
        
        dateLabel.text = "\(day)"
        dateLabel.textColor = isToday ? .white : Resourses.Colors.unselectedColor
    }
    
    
}

extension WeekDayView {
    
    override func addViews() {
        super.addViews()
        addView(stackView)
        
        stackView.addArrangedSubview(dayNameLabel)
        stackView.addArrangedSubview(dateLabel)
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
       
        layer.masksToBounds = true
        layer.cornerRadius = 5
        
        stackView.spacing = 3
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        dayNameLabel.textAlignment = .center
        dayNameLabel.font = Resourses.Fonts.font(size: 12)
        
        dateLabel.textAlignment = .center
        dateLabel.font = Resourses.Fonts.font(size: 18)
    }
}
