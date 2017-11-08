//
//  CalendarViewController.swift
//  Reminder
//
//  Created by Felipe Melo on 11/7/17.
//  Copyright © 2017 Felipe Melo. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {
    let calendarIdentifier: String = "calendarIdentifier"
    let cellSpacing: CGFloat = 15
    
    var reminders = [(title: "Estudar Design", time: "10:30", description: "Ler o livro Design para quem não é designer, parei na página 50 e está mt dahora."), (title: "Fazer Compras", time: "12:30", description: "Comprar as coisas conforme a lista.")]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.separatorStyle = .none
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CalendarViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.reminders.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        headerView.alpha = 0
        return headerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.calendarIdentifier) as! CalendarViewCell
        
        cell.setupCell(title: self.reminders[indexPath.row].title, time: self.reminders[indexPath.row].time, description: self.reminders[indexPath.row].description)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return self.cellSpacing
    }
}
