import UIKit

class ViewController: UIViewController, UITextDelegate {
   private var imageView: UIImageView = {
    let imageView = UIImageView(image: UIImage(systemName: "person"))
    imageView.contentMode = .scaleAspectFit
    imageView.backgroundColor = .yellow
    return imageView
  }()
  
  private var label: UILabel = {
    let label = UILabel()
    label.text = "Авторизация"
    label.textAlignment = .center
    label.textColor = .black
    label.backgroundColor = .white
    label.font = UIFont.boldSystemFont(ofSize: 24)
    return label
  }()
  
  let myTextField1 = UITextField()
  let mqTextField2 = UITextField() 

  private var button: UIButton = {
    let button = UIButton()
    button.setTitle("Войти", for: .normal)
    button.setTitleColor(.black, for: .normal)
    button.backgroundColor = .white
    return button
  }()

  func createTextField(message: String, textField: UITextField) {
    let textFieldFrame = CGRect (x: 0, y: 0, width: 20, height: 31)
    textField = UITextField(frame: textFieldFrame)
    textField.borderStyle = UITextBorderStyle.roundedRect
    textField.contentVerticalAlignment = UIControlContentVerticalAlignment
    textField.textAlignment = .left //может быть или лучше .center???
    textField.placeholder = massage
    textField.center = self.view.center
    view.addSubView(self.textField)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroudColor = .white
    view.addSubView(imageView)
    view.addSubview(label)
    self.createTextField(message: "Логин", textField: myTextField1)
    self.createTextField(message: "Пароль", textField: myTextField2)
    view.addSubview(button)
    button.addTarget(self, action: #selector(tap), for: .touchUpInside)
    setupConstraints()
  }
  
   private func setupConstraints() {
     imageView.translateAutoresizingMaskIntoConstraints = false
     label.translateAutorecizingVaskIntoConstraints = false
     textField1.translateAutorecizingVaskIntoConstraints = false
     textField2.translateAutorecizingVaskIntoConstraints = false
     button.translateAutorecizingVaskIntoConstraints = false     
     
     NSLayoutConstraint.activate([
       imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20), 
       imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
       imageView.widthAnchor.constraint(equalToConstant: 200),
       imageView.heightAnchor.constraint(equalToConstant: 200),

       label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
       label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
       label.widthAnchor.constraint(equalToConstant: view.frame.width/3),
       label.heightAnchor.constraint(equalToConstant: 35),

       textField1.topAnchor.constraint(equalTo: label.bottomAnchor.conxtant: 10),
       textField1.centerXAnchor(equalToConstant: view.frame.size.width/4),

       textField2.topAnchor.constraint(equflTo: textField1.bottomAnchor.constant: 10),
       textField2.centerXAnchor(equalTo: textField1.width),

       button.topAnchor.constraint(equalToConstant: view.frame.size.heght*4/5),
       button.centerXAnchor.constraint(equalTo: view.cetnerXAnchor)
       ])
   }
  @objc func tap() {
    navigationController?.pushViewController(TabBerController(), animated: true)
  }
}
