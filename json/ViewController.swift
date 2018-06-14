//
//  ViewController.swift
//  json
//
//  Created by Obada on 5/22/18.
//  Copyright © 2018 Obada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("good")
        jsonreq()
    }
    
    @IBAction func req(_ sender: Any) {
        print("good")
        jsonreq()
    }
}

func jsonreq () {
    // hna al string de 3l4an al bta3a de (:) 5od balk
    let url = URL(string:"https://api.darksky.net/forecast/e8c9ed6814f33e4d4afb94bae4d1aa92/37.8267,-122.4233")
    // hayz adownload al shared dy bta3t GET methode w datatask de
 /* let mession =  URLSession.shared.dataTask(with: url!) { (dta:Data?, res:URLResponse?, err:Error?) in
        

        if let data = dta {
            //da print ll request aly b3ato
        print(data)
        print("//////////////////////////***********\\\\\\\\\\")
         
           /* Extracting Values from JSON
            The JSONSerialization class method jsonObject(with:options:) returns a value of type Any and throws an error if the data couldn’t be parsed.*/
            
            //al try de 34an call cant throw with out try
            
           let json = try JSONSerialization.jsonObject(with: dta, options: [])
            
           if let dictionary = json["daily"]  {
           if let number = dictionary["someKey"] as? Double {
                    // access individual value in dictionary
            }
        
        
 
    
        }
        //to start this task (downloadingway) use . resume
        }
    

    
    
    
 */
    
}
    mession.resume()
 
 */
    
    let task = URLSession.shared.dataTask(with: url!){ (dta, _, error) in
        if  let data = dta {
        
            
            let json = try? JSONSerialization.jsonObject(with: dta!)as? [String: Any]
    
            if let dictionary = json??["daily"] as? [String: Any] {
               if let number = dictionary["data"] {
                print(number)
                }
            }
          
        }
            
            
    
    
    
        

    
    
    

}.resume()
}
