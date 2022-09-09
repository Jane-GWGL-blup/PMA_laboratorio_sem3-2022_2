//
//  Auto.swift
//  Semana03-2022-2
//
//  Created by MAC31 on 9/09/22.
//

import Foundation

class Auto{
    
    //si no tenemos un constructor, podemos inicializar las variables
    var brand:String = "Toyota"
    var model:String = "Pickup"
    var color:String = "negro"
    var speed:Float = 60.5
    
    func move(moreSpeed: Float){
//        print("Auto \(brand) - \(model) start with this speed: \(speed)")
        speed += moreSpeed
        if speed > 160 {
            self.stop()
        }
    }
    
    func slowDown (lessSpeed:Float){
        speed -= lessSpeed
        if speed < 0 {
            move(moreSpeed: lessSpeed)
        }
    }
    
    func stop(){
        print("Autho stopped")
        speed = 0.0
    }
}
