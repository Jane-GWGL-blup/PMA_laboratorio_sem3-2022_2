//
//  ViewController.swift
//  Semana03-2022-2
//
//  Created by MAC31 on 9/09/22.
//

import UIKit

class ViewController: UIViewController {
//    Instanciamos auto
//    El import es implicito en Swift
    let auto: Auto = Auto()
    
//    vamos a referenciar los label de la vista
    @IBOutlet weak var lblBrand: UILabel!
    @IBOutlet weak var lblModel: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var lblSpeed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ///Recordemos que esta funcion se ejecuto cuando la pantalla inicia
        setUpLabel(auto: auto)
        
    }

    
    ///Los actions y functions van despues de viewDidLoad
    
    @IBAction func onTapNewCar(_ sender: UIButton) {
        
        auto.brand = "Nissan"
        auto.model = "Frontier"
        auto.color = "Rojo"
        auto.speed = 50.3
        setUpLabel(auto: auto)
    }
    
    @IBAction func onTapAcelerate(_ sender: UIButton) {
        let newSpeed = Float.random(in: 1...100)
        auto.move(moreSpeed: newSpeed)
        if auto.speed > 160{
            auto.stop()
        }
        setUpLabel(auto: auto)
    }
    
    @IBAction func onTapStop(_ sender: UIButton) {
        auto.stop()
        setUpLabel(auto: auto)
    }
    
    @IBAction func onTapSlowDown(_ sender: UIButton) {
        let newSpeed = Float.random(in:1...100)
        auto.slowDown(lessSpeed: newSpeed)
        setUpLabel(auto: auto)
        
    }
    
    
    func setUpLabel(auto:Auto){
        lblBrand.text = auto.brand
        lblModel.text = auto.model
        lblColor.text = auto.color
        lblSpeed.text = String(auto.speed)
    }
    
}

