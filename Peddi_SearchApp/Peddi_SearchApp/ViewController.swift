//
//  ViewController.swift
//  Peddi_SearchApp
//
//  Created by Peddi,Venkataramana on 3/17/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var nxttbtn: UIButton!
    
    
    @IBOutlet weak var prevbtn: UIButton!
    
    @IBOutlet weak var searchbtn: UIButton!
    
    var topic = 0
     
    var n = 0
    
    @IBOutlet weak var resetbtn: UIButton!
    
    
    let img = [["panda","tiger","rabbit","monkey","peg"],
               ["Astrantia","Allium","Angelonia","Aster","Azalea"],
               ["Chris Hemsworth","Scarlett Johansson","Robert","Tom Holland","Elizabeth Olsen"]]
    
    let animals_keywords = ["panda","tiger","rabbit","monkey","penguin"]
    
    let flowers_keywords = ["astrantia","allium","angelonia","aster","azalea"]

    let actors_keywords = ["Chris Hemsworth","Scarlett Johansson","Robert","Tom Holland","Elizabeth Olsen"]
    
    let topics_array = [["The giant panda (Ailuropoda melanoleuca, sometimes panda bear or simply panda) is a bear species endemic to China.[4] It is characterised by its bold black-and-white coat and rotund body. The name giant panda is sometimes used to distinguish it from the red panda, a neighboring musteloid.",
                        "The tiger (Panthera tigris) is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boar.",
                        "Rabbits, also known as bunnies or bunny rabbits, are small mammals in the family Leporidae (which also contains the hares) of the order Lagomorpha (which also contains the pikas). Oryctolagus cuniculus includes the European rabbit species and its descendants, the world's 305 breeds[1] of domestic rabbit.",
                        "Monkey is a common name that may refer to most mammals of the infraorder Simiiformes, also known as the simians. Traditionally, all animals in the group now known as simians are counted as monkeys except the apes, which constitutes an incomplete paraphyletic grouping; however, in the broader sense based on cladistics, apes (Hominoidea) are also included, making the terms monkeys and simians synonyms in regards to their scope.",
                        "Penguins (order Sphenisciformes /sfɪˈnɪsɪfɔːrmiːz/, family Spheniscidae /sfɪˈnɪsɪdiː/) are a group of aquatic flightless birds. They live almost exclusively in the Southern Hemisphere: only one species, the Galápagos penguin, is found north of the Equator."],
                        ["Astrantia is a genus of herbaceous plants in the family Apiaceae, native to Central, Eastern and Southern Europe and the Caucasus. There are several species, which have aromatic roots, palmate leaves, and decorative flowers. They are commonly known as great masterwort or masterwort which may also refer to other plants, particularly the unrelated Peucedanum ostruthium.",
                        "Allium is a genus of monocotyledonous flowering plants with hundreds of species, including the cultivated onion, garlic, scallion, shallot, leek, and chives. The generic name Allium is the Latin word for garlic,and the type species for the genus is Allium sativum which means cultivated garlic.",
                         "Angelonia is a genus of about 30 species which occur from Mexico to Argentina and is classified in the Plantaginaceae. They are herbaceous plants occurring mainly in arid and semi-arid habitats. Most Angelonia species can be found in Northeastern Brazil in the Seasonally Dry Tropical Forest namely Caatinga.",
                         "Aster is a genus of perennial flowering plants in the family Asteraceae. Its circumscription has been narrowed, and it now encompasses around 170 species, all but one of which are restricted to Eurasia; many species formerly in Aster are now in other genera of the tribe Astereae. Aster amellus is the type species of the genus and the family Asteraceae",
                        "Azaleas /əˈzeɪliə/ are flowering shrubs in the genus Rhododendron, particularly the former sections Tsutsusi (evergreen) and Pentanthera (deciduous). Azaleas bloom in the spring (April and May in the temperate Northern Hemisphere, and October and November in the Southern Hemisphere),[1] their flowers often lasting several weeks. Shade tolerant, they prefer living near or under trees."],
                        ["Christopher Hemsworth was born on 11 August 1983 in Melbourne, to Leonie , an English teacher, and Craig Hemsworth, a social-services counsellor.He is the second of three sons, following Luke (born 1980) and preceding Liam (born 1990); both of them are also actors. ",
                         "Scarlett Ingrid Johansson (born November 22, 1984) is an American actress. The world's highest-paid actress in 2018 and 2019, she has featured multiple times on the Forbes Celebrity 100 list. Time magazine named her one of the 100 most influential people in the world in 2021. Her films have grossed over $14.3 billion worldwide, making Johansson the highest-grossing box office star of all time.",
                        "Robert John Downey Jr. (born April 4, 1965)is an American actor and producer. His career has been characterized by critical and popular success in his youth, followed by a period of substance abuse and legal troubles, before a resurgence of commercial success later in his career. In 2008, Downey was named by Time magazine among the 100 most influential people in the world, and from 2013 to 2015, he was listed by Forbes as Hollywood's highest-paid actor.",
                        "Thomas Stanley Holland (born 1 June 1996) is an English actor. His accolades include a British Academy Film Award, and three Saturn Awards. Some publications have called him one of the most popular actors of his generation.",
                        "Elizabeth Chase Olsen (born February 16, 1989) is an American actress. Born in Sherman Oaks, California, Olsen began acting at age four. She starred in her debut film role in the thriller Martha Marcy May Marlene in 2011, for which she was acclaimed and nominated for a Critics' Choice Movie Award among other accolades, followed by a role in the horror film Silent House. Olsen received a BAFTA Rising Star Award nomination and graduated from New York University two years later."]]
                
             
    override func viewDidLoad() {
        super.viewDidLoad()
        resultImage.image = UIImage(named: "welcome")
        searchbtn.isEnabled = false
        nxttbtn.isHidden = true
        prevbtn.isHidden = true
        resetbtn.isHidden = true
        // Do any additional setup after loading the view.
        prevbtn.isEnabled = false
    }
    
//    func details(_ n : Int){
//        resultImage.image = UIImage(named: b[n][0])
//
//
//    }

    @IBAction func Textfun(_ sender: Any) {
        searchbtn.isEnabled = true
    }
    @IBAction func searchButtonAction(_ sender: Any) {
        
        nxttbtn.isHidden = false
        prevbtn.isHidden = false
        resetbtn.isHidden = false
       
        var a = searchTextField.text!
        
        if(a.isEmpty){
            searchbtn.isEnabled = false
            nxttbtn.isHidden = true
            prevbtn.isHidden = true
            resetbtn.isHidden = true
            topicInfoText.text = ""
            resultImage.image = UIImage(named: "welcome")
            
            
        }
        
        else if(!(a.isEmpty)) {
          
            if(animals_keywords.contains(a)){
             resultImage.image = UIImage(named: img[0][0])
                topicInfoText.text = topics_array[0][0];topic=1
               
            }
        
            
        else if(flowers_keywords.contains(a)){
            
    
            
            resultImage.image = UIImage(named: img[1][0])
                topicInfoText.text = topics_array[1][0];topic=2
               
    
             
        
         

        }
        else if(actors_keywords.contains(a)){
           
                      resultImage.image = UIImage(named: img[2][0])
                        topicInfoText.text = topics_array[2][0];topic=3
                        
        }
            
        
        else {
            resultImage.image=UIImage(named: "searchnot")
            topicInfoText.text = ""
            nxttbtn.isHidden = true
            prevbtn.isHidden = true
            resetbtn.isHidden = true
        }
        }
    }
    @IBAction func ShowNextImagesBtn(_ sender: Any) {
        n += 1
        if(topic == 1){
            
            updatecoursedetails(0,n)}
        else if(topic == 2){
            updatecoursedetails(1,n)
        }
        else{updatecoursedetails(2, n)}
        
        prevbtn.isEnabled = true
        
        if(n == animals_keywords.count-1 && n == flowers_keywords.count-1 && n == actors_keywords.count-1 ){
            nxttbtn.isEnabled = false
        }
        
        
    }
    
    @IBAction func ShowPrevImagesBtn(_ sender: Any) {
        n -= 1
        if(topic == 1){
            
            updatecoursedetails(0,n)}
        else if(topic == 2){
            updatecoursedetails(1,n)
        }
        else{updatecoursedetails(2, n)}
        
        nxttbtn.isEnabled = true
        
        if(n == 0 ){
            prevbtn.isEnabled = false
        }
    }
    
    
    @IBAction func ResetBtn(_ sender: Any) {
        viewDidLoad()
        topicInfoText.text = ""
        searchTextField.text = ""
        nxttbtn.isHidden = true
        prevbtn.isHidden = true
        resetbtn.isHidden = true
        nxttbtn.isEnabled = true
        n = 0
    }
    
    func updatecoursedetails(_ a:Int ,_ b:Int){
        resultImage.image = UIImage(named: img[a][b])
        topicInfoText.text = topics_array[a][b];
        
    }
    
}

