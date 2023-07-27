//
//  AddViewController.swift
//  CoreDataExample
//
//  Created by Kürşat Akyürek on 24.07.2023.
//

import UIKit
import CoreData

final class AddViewController: UIViewController {
    
    @IBOutlet weak var firmaTextField: UITextField!
    
    @IBOutlet weak var sektorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    
    @IBAction func kaydetButton(_ sender: UIButton) {
        
        if firmaTextField.text != "" && sektorTextField.text != ""{
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "VeriDepo", in: context)!
            let itemData = VeriDepo(entity: entity, insertInto: context)
            
            if let firma = firmaTextField.text, let sektor = sektorTextField.text{
                itemData.firma = firma
                itemData.sektor = sektor
                
                do{
                    try context.save()
                    veriListe.append(itemData)
                    alertMessage(title: "Başarılı", message: "Veri Kaydedildi")
                    
                }catch{
                    alertMessage(title: "Hata", message: "Veri KAYDEDİLEMEDİ")
                }
            }
        }else{
            alertMessage(title: "UYARI", message: "Alanlar Boş Geçilemez")
        }
    }
    


}
