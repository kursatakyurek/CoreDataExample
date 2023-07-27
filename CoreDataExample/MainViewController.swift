//
//  ViewController.swift
//  CoreDataExample
//
//  Created by Kürşat Akyürek on 24.07.2023.
//

import UIKit
import CoreData

var veriListe = [VeriDepo]()

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let reguest = NSFetchRequest<NSFetchRequestResult>(entityName: "VeriDepo")
        
        do{
            let result = try context.fetch(reguest)
            for item in result as! [VeriDepo]{
                veriListe.append(item)
            }
        }catch{
            alertMessage(title: "Uyarı", message: "Veri Bulunamadı")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }


}

extension MainViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return veriListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainTableViewCell
        cell.firmaLabel.text = veriListe[indexPath.row].firma
        cell.sektorLabel.text = veriListe[indexPath.row].sektor
        return cell
    }
    
    
}

