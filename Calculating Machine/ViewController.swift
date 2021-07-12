//
//  ViewController.swift
//  Calculating Machine
//
//  Created by Muhammed YILDIRIM  on 19.06.2021.

// Bu uygulama Muhammed YILDIRIM tarafından tasarlanmış ve programlanmıştır.

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var acbutton: UIButton! {
        didSet {
            acbutton.layer.cornerRadius = acbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var artıeksibutton: UIButton! {
        didSet {
            artıeksibutton.layer.cornerRadius = artıeksibutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var yüzdebutton: UIButton! {
        didSet {
            yüzdebutton.layer.cornerRadius = yüzdebutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var bölbutton: UIButton! {
        didSet {
            bölbutton.layer.cornerRadius = bölbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var carpbutton: UIButton! {
        didSet {
            carpbutton.layer.cornerRadius = carpbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var cıkarbutton: UIButton! {
        didSet {
            cıkarbutton.layer.cornerRadius = cıkarbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var toplabutton: UIButton! {
        didSet {
            toplabutton.layer.cornerRadius = toplabutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var esitbutton: UIButton! {
        didSet {
            esitbutton.layer.cornerRadius = esitbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var virgülbutton: UIButton! {
        didSet {
            virgülbutton.layer.cornerRadius = virgülbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var sıfırbutton: UIButton! {
        didSet {
            sıfırbutton.layer.cornerRadius = sıfırbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var birbutton: UIButton! {
        didSet {
            birbutton.layer.cornerRadius = birbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var ikibutton: UIButton! {
        didSet {
            ikibutton.layer.cornerRadius = ikibutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var ucbutton: UIButton! {
        didSet {
            ucbutton.layer.cornerRadius = ucbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var dörtbutton: UIButton! {
        didSet {
            dörtbutton.layer.cornerRadius = dörtbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var besbutton: UIButton! {
        didSet {
            besbutton.layer.cornerRadius = besbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var altibutton: UIButton! {
        didSet {
            altibutton.layer.cornerRadius = altibutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var yedibutton: UIButton! {
        didSet {
            yedibutton.layer.cornerRadius = yedibutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var sekizbutton: UIButton! {
        didSet {
            sekizbutton.layer.cornerRadius = sekizbutton.bounds.height / 2.5
        }
    }
    @IBOutlet weak var dokuzbutton: UIButton! {
        didSet {
            dokuzbutton.layer.cornerRadius = dokuzbutton.bounds.height / 2.5
        }
    }

    // Değişkenler
    var firstNumber = Double()
    var nextNumber = Double()
    var sonuc = Double()
    var sonucInt = Int()
    var sonucDouble = Double()
    var islemturu = ""
    var labelbelirle = Double()
    var labelArtıInt = Int()
    var labelArtıDouble = Double()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        label.text = "0"
        firstNumber = Double()
        nextNumber = Double()
        sonuc = Double()
        sonucInt = Int()
        sonucDouble = Double()
        islemturu = ""
        labelbelirle = Double()
        labelArtıInt = Int()
        labelArtıDouble = Double()
        virgülbutton.isEnabled = true
        toplabutton.isEnabled = true
        carpbutton.isEnabled = true
        cıkarbutton.isEnabled = true
        bölbutton.isEnabled = true
        esitbutton.isEnabled = true
        
    }
    
    @IBAction func acClicked(_ sender: Any) {
        viewDidLoad()
    }
    
    @IBAction func artıeksiClicked(_ sender: Any) {
        labelbelirle = Double(label.text!)!
        labelArtıInt = Int(labelbelirle)
        labelArtıDouble = Double(labelArtıInt)
        if labelbelirle == labelArtıDouble {
            label.text = String(Int(labelArtıInt) * (-1))
        } else {
            label.text = String(labelbelirle * (-1.0))
        }
    }
    
    @IBAction func yüzdeClicked(_ sender: Any) {
        let yüzdeSonuc = Double(self.label.text!)!
        if self.label.text == "0" {
            self.label.text = "0"
        } else {
            self.label.text = String(yüzdeSonuc / 100)
        }
    }
    
    @IBAction func bölClicked(_ sender: Any) {
        if label.text != nil {
            firstNumber = Double(label.text!)!
            islemturu = "/"
            bölbutton.isEnabled = false
            virgülbutton.isEnabled = true
            label.text = ""
        }
    }
    
    @IBAction func carpClicked(_ sender: Any) {
        if label.text != nil {
            firstNumber = Double(label.text!)!
            islemturu = "*"
            carpbutton.isEnabled = false
            virgülbutton.isEnabled = true
            label.text = ""
        }
    }
    
    @IBAction func cıkarClicked(_ sender: Any) {
        if label.text != nil {
            firstNumber = Double(label.text!)!
            islemturu = "-"
            cıkarbutton.isEnabled = false
            virgülbutton.isEnabled = true
            label.text = ""
        }
    }
    
    @IBAction func toplaClicked(_ sender: Any) {
        if label.text != nil {
            firstNumber = Double(label.text!)!
            islemturu = "+"
            toplabutton.isEnabled = false
            virgülbutton.isEnabled = true
            label.text = ""
        }
    }

    @IBAction func esitClicked(_ sender: Any) {
        if label.text != "" {
            nextNumber = Double(label.text!)!
            switch islemturu {
            case "+":
                sonuc = (firstNumber + nextNumber)
                toplabutton.isEnabled = true
            case "*":
                sonuc = (firstNumber * nextNumber)
                carpbutton.isEnabled = true
            case "/":
                sonuc = (firstNumber / nextNumber)
                bölbutton.isEnabled = true
            default:
                sonuc = (firstNumber - nextNumber)
                cıkarbutton.isEnabled = true
            }
            sonucInt = Int(sonuc)
            
            sonucDouble = Double(sonucInt)
            
            if sonuc == sonucDouble {
                label.text = String(sonucInt)
            } else {
                label.text = String(sonuc)
            }
        } else {
            esitbutton.isEnabled = false
            
        }
    }
    
    @IBAction func virgülClecked(_ sender: Any) {
        
        if label.text == "0" {
            label.text = label.text! + "."
            virgülbutton.isEnabled = false
        } else {
            label.text = label.text! + "."
            virgülbutton.isEnabled = false
        }
    }
    
    @IBAction func sıfırClicked(_ sender: Any) {
        if self.label.text == "0" {
            self.label.text = "0"
        } else {
            self.label.text = self.label.text! + "0"
        }
    }
    
    @IBAction func birClicked(_ sender: Any) {
        labelSayiYazdır(Sayi: "1")
    }
    
    @IBAction func ikiClicked(_ sender: Any) {
        labelSayiYazdır(Sayi: "2")
    }

    @IBAction func ucClicked(_ sender: Any) {
        labelSayiYazdır(Sayi: "3")
    }

    @IBAction func dörtClicked(_ sender: Any) {
        labelSayiYazdır(Sayi: "4")
    }
    
    @IBAction func besClicked(_ sender: Any) {
        labelSayiYazdır(Sayi: "5")
    }

    @IBAction func altiClicked(_ sender: Any) {
        labelSayiYazdır(Sayi: "6")
    }
    
    @IBAction func yediClicked(_ sender: Any) {
        labelSayiYazdır(Sayi: "7")
    }
    
    @IBAction func sekizClicked(_ sender: Any) {
        labelSayiYazdır(Sayi: "8")
    }
    
    @IBAction func dokuzClicked(_ sender: Any) {
        labelSayiYazdır(Sayi: "9")
    }
    
    func labelSayiYazdır(Sayi: String) {
        
        if self.label.text == "0" {
            self.label.text = Sayi
        } else  {
            self.label.text = self.label.text! + Sayi
            
        }
    }
    
    
}


