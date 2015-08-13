//
//  ViewController.swift
//  RecordGame
//
//  Created by Scott Latsa on 3/25/15.
//  Copyright (c) 2015 Scott Latsa. All rights reserved.
//

import UIKit

class RecordGameViewController: UIViewController {

    @IBOutlet weak var vewCourt: CourtView!
    
    var playerRecord = Dictionary<String, String>()
    var vbPlayers = [[String:String]]()
    var vbSkills = [[String:String]]()
    var vbRotations = [[String:String]]()
    var vbActions = [[String:String]]()
    var vbScores = [[String:String]]()
    var touchLocation: CGPoint = CGPoint()
    var playerSelected: Bool = true
    var currentSelectedPlayer: UIButton = UIButton()
    var currentSelectedSkill: UIButton = UIButton()
    var currentSelectedRotation: UIButton = UIButton()
    var currentSelectedAction: UIButton = UIButton()
    var currentSelectedScore: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        self.displayPlayers()
        
        self.displaySkill()
        self.displayRotation()
        self.displayAction()
        self.displayScore()
        self.displaySubmit()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    let dotTag: Int = 1000
    
    let tmp = CGRect()
    
    var bounds2: CGRect = UIScreen.mainScreen().bounds
    var width: CGFloat = UIScreen.mainScreen().bounds.size.width
    var height: CGFloat = UIScreen.mainScreen().bounds.size.height
    
    let courtFrame = CGRectMake(0.0, 0.0, UIScreen.mainScreen().bounds.size.width * 0.7 , UIScreen.mainScreen().bounds.size.height)
    var dotView: DotView = DotView(frame: CGRectMake(0.0, 0.0, 0.0, 0.0))

    @IBAction func tapCourt(gesture: UITapGestureRecognizer) {
        
        if gesture.state == .Ended {
            
            touchLocation = gesture.locationInView(self.view)
            
            if (CGRectContainsPoint(courtFrame, touchLocation)) {
                println("yes")
                self.view.viewWithTag(dotTag)?.removeFromSuperview()
                var circleWidth = CGFloat(20)
                var circleHeight = circleWidth
                
                let dotCenterX: CGFloat = touchLocation.x - (circleWidth / 2)
                let dotCenterY: CGFloat = touchLocation.y - (circleWidth / 2)
                
                // Create a new CircleView
                dotView = DotView(frame: CGRectMake(dotCenterX, dotCenterY, circleWidth, circleHeight))
                dotView.tag = dotTag
                view.addSubview(dotView)
            } else {
                println("no")
            }

            println("frame1 \(courtFrame)")
            println("x= \(touchLocation.x)")
            println("y= \(touchLocation.y)")
            
        }
        
    }

    func playerClicked(vbPlayer: UIButton!) {
 
        var alertView = UIAlertView();

        alertView.addButtonWithTitle("Ok \(touchLocation)");
        alertView.message = "vbPlayer.tag \(vbPlayer.tag)";
        if (currentSelectedPlayer != vbPlayer) {
            if (currentSelectedPlayer.tag < 2000) {
                alertView.title = "First Player";
            } else {
                alertView.title = "New Player";
            }
        } else {
            alertView.title = "Same";
        }

        println(vbPlayer.selected)
        currentSelectedPlayer.selected = false
        vbPlayer.selected = true
        println(vbPlayer.selected)
        vbPlayer.layer.borderColor = UIColor.yellowColor().CGColor
        vbPlayer.backgroundColor = UIColor.yellowColor()
        currentSelectedPlayer = vbPlayer
    }
 
    func vbSkillClicked(vbSkill: UIButton!) {

        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.message = "vbSkill.tag \(vbSkill.tag)";
        if (currentSelectedPlayer != vbSkill) {
            if (currentSelectedPlayer.tag < 2000) {
                alertView.title = "First Player";
            } else {
                alertView.title = "New Player";
            }
        } else {
            alertView.title = "Same";
        }

        println(vbSkill.selected)
        currentSelectedSkill.selected = false
        vbSkill.selected = true
        println(vbSkill.selected)
        vbSkill.layer.borderColor = UIColor.yellowColor().CGColor
        vbSkill.backgroundColor = UIColor.yellowColor()
        currentSelectedSkill = vbSkill
    }
    
    func vbRotationClicked(vbRotation: UIButton!) {

        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.message = "vbRotation.tag \(vbRotation.tag)";
        if (currentSelectedPlayer != vbRotation) {
            if (currentSelectedPlayer.tag < 2000) {
                alertView.title = "First Player";
            } else {
                alertView.title = "New Player";
            }
        } else {
            alertView.title = "Same";
        }

        println(vbRotation.selected)
        currentSelectedRotation.selected = false
        vbRotation.selected = true
        println(vbRotation.selected)
        vbRotation.layer.borderColor = UIColor.yellowColor().CGColor
        vbRotation.backgroundColor = UIColor.yellowColor()
        currentSelectedRotation = vbRotation
    }
    
    func vbActionClicked(vbAction: UIButton!) {

        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.message = "vbAction.tag \(vbAction.tag)";
        if (currentSelectedPlayer != vbAction) {
            if (currentSelectedPlayer.tag < 2000) {
                alertView.title = "First Player";
            } else {
                alertView.title = "New Player";
            }
        } else {
            alertView.title = "Same";
        }

        println(vbAction.selected)
        currentSelectedAction.selected = false
        vbAction.selected = true
        println(vbAction.selected)
        vbAction.layer.borderColor = UIColor.yellowColor().CGColor
        vbAction.backgroundColor = UIColor.yellowColor()
        currentSelectedAction = vbAction
    }
    
    func vbScoreClicked(vbScore: UIButton!) {

        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.message = "vbScore.tag \(vbScore.tag)";
        if (currentSelectedPlayer != vbScore) {
            if (currentSelectedPlayer.tag < 2000) {
                alertView.title = "First Player";
            } else {
                alertView.title = "New Player";
            }
        } else {
            alertView.title = "Same";
        }

        println(vbScore.selected)
        currentSelectedScore.selected = false
        vbScore.selected = true
        println(vbScore.selected)
        vbScore.layer.borderColor = UIColor.yellowColor().CGColor
        vbScore.backgroundColor = UIColor.yellowColor()
        currentSelectedScore = vbScore
    }
    
    func vbSubmitClicked(vbSubmit: UIButton!) {
 
        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        if (currentSelectedPlayer != vbSubmit) {
            if (currentSelectedPlayer.tag < 2000) {
                alertView.title = "First Player";
            } else {
                alertView.title = "New Player";
            }
        } else {
            alertView.title = "Same";
        }
        let playerSelectedTag = currentSelectedPlayer.tag
        let skillSelectedTag = currentSelectedSkill.tag
        let rotationSelectedTag = currentSelectedRotation.tag
        let actionSelectedTag = currentSelectedAction.tag
        let scoreSelectedTag = currentSelectedScore.tag

        alertView.message = "Dot \(touchLocation) Player \(playerSelectedTag) Skill \(skillSelectedTag) Rotation \(rotationSelectedTag) Action \(actionSelectedTag) Score \(scoreSelectedTag)"

        alertView.show();
        println(vbSubmit.selected)
        

        currentSelectedPlayer.selected = false
        currentSelectedSkill.selected = false
        currentSelectedRotation.selected = false
        currentSelectedAction.selected = false
        currentSelectedScore.selected = false
        currentSelectedPlayer = UIButton()
        currentSelectedSkill = UIButton()
        currentSelectedRotation = UIButton()
        currentSelectedAction = UIButton()
        currentSelectedScore = UIButton()
        self.view.viewWithTag(dotTag)?.removeFromSuperview()

        touchLocation = CGPoint(x: 0.0, y: 0.0)
        
        println(vbSubmit.selected)

    }
    
    func getPlayers() -> Array<[String : String]> {
        
        var tmp: Array = [[String:String]]()
        tmp.append(["number" : "1"])
        tmp.append(["number" : "3"])
        tmp.append(["number" : "4"])
        tmp.append(["number" : "5"])
        tmp.append(["number" : "8"])
        tmp.append(["number" : "23"])
        tmp.append(["number" : "44"])
        tmp.append(["number" : "59"])
        tmp.append(["number" : "88"])
        tmp.append(["number" : "99"])
        
        return tmp
    }
    
    func getSkills() -> Array<[String : String]> {
        
        var tmp: Array = [[String:String]]()
        tmp.append(["name" : "serve", "id" : "1"])
        tmp.append(["name" : "attack", "id" : "2"])
        tmp.append(["name" : "pass", "id" : "3"])
        tmp.append(["name" : "set", "id" : "4"])
        
        return tmp
    }
    
    func getRotations() -> Array<[String : String]> {
        
        var tmp: Array = [[String:String]]()
        tmp.append(["name" : "1", "id" : "1"])
        tmp.append(["name" : "2", "id" : "2"])
        tmp.append(["name" : "3", "id" : "3"])
        tmp.append(["name" : "4", "id" : "4"])
        tmp.append(["name" : "5", "id" : "5"])
        tmp.append(["name" : "6", "id" : "6"])
        tmp.append(["name" : "None", "id" : "7"])
        
        return tmp
    }
    
    func getActions() -> Array<[String : String]> {
        
        var tmp: Array = [[String:String]]()
        tmp.append(["name" : "1", "id" : "1"])
        tmp.append(["name" : "2", "id" : "2"])
        tmp.append(["name" : "3", "id" : "3"])
        tmp.append(["name" : "4", "id" : "4"])
        tmp.append(["name" : "5", "id" : "5"])
        tmp.append(["name" : "6", "id" : "6"])
        tmp.append(["name" : "7", "id" : "7"])
        tmp.append(["name" : "8", "id" : "8"])
        tmp.append(["name" : "9", "id" : "9"])
        tmp.append(["name" : "None", "id" : "10"])
        
        return tmp
    }
    
    func getScores() -> Array<[String : String]> {
        
        var tmp: Array = [[String:String]]()
        tmp.append(["name" : "0", "id" : "1"])
        tmp.append(["name" : "1", "id" : "2"])
        tmp.append(["name" : "2", "id" : "3"])
        tmp.append(["name" : "3", "id" : "4"])
        tmp.append(["name" : "None", "id" : "5"])
        
        return tmp
    }
    
    func displayPlayers() {
        
        println("Adding Players")
        
        vbPlayers = self.getPlayers()
        
        var playersStartX: Int = 750
        var playersStartY: Int = 100
        var playersCalcX: Int = 750
        var playersCalcY: Int = 100
        let playersXFactor: Int = 90
        let playersYFactor: Int = 70
        let playerNumOfColumes: Int = 3
        var vbPlayerColumn: Int = 1
        var vbPlayerRow: Int = 1
        let vbPlayerTagBase: Int = 2000
        
        var vbPlayerIndex: Int = 0
        for vbPlayer in vbPlayers {
            println(vbPlayer)
            println(vbPlayer["number"])
            println(vbPlayerIndex)
            vbPlayerRow = Int(vbPlayerIndex / playerNumOfColumes)
            vbPlayerColumn = vbPlayerIndex % playerNumOfColumes
            playersCalcX = playersStartX + (playersXFactor * vbPlayerColumn)
            playersCalcY = playersStartY + (playersYFactor * vbPlayerRow)
            println("vbPlayerColumn \(vbPlayerColumn) vbPlayerRow \(vbPlayerRow) playersCalcX \(playersCalcX) playersCalcY \(playersCalcY)")
            vbPlayerIndex++
            self.displayPlayerButton(locationX: CGFloat(playersCalcX), locationY: CGFloat(playersCalcY), vbPlayer: vbPlayer)
            
        }
        
    }
    
    func displayPlayerButton(#locationX: CGFloat, locationY: CGFloat, vbPlayer: Dictionary<String, String>) {
        
        var buttonWidth = CGFloat(80)
        var buttonHeight = CGFloat(60)
        let buttonCenterX: CGFloat = locationX
        let buttonCenterY: CGFloat = locationY
       
        let playerButton = ToggleButton(frame: CGRectMake(buttonCenterX, buttonCenterY, buttonWidth, buttonHeight))
        
        playerButton.setTitle(vbPlayer["number"], forState: UIControlState.Normal)
        playerButton.setTitle(vbPlayer["number"], forState: UIControlState.Highlighted)

        playerButton.titleLabel!.font =  UIFont(name: "Arial", size: 50)
        playerButton.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        playerButton.setTitleColor(UIColor.purpleColor(), forState: .Highlighted)
        playerButton.setTitleColor(UIColor.redColor(), forState: .Selected)
        
        // Round button corners
        playerButton.layer.masksToBounds = true
        playerButton.layer.cornerRadius = 20.0
        playerButton.clipsToBounds = true
        
        // Add Touch action
        playerButton.addTarget(self, action: "playerClicked:", forControlEvents: .TouchUpInside)
        
        // Backgrounds
        let normalImage = UIImage(named: "button-blue-dark") as UIImage?
        let hightlightedImage = UIImage(named: "button-dark-blue") as UIImage?
        let selectedImage = UIImage(named: "button-light-blue") as UIImage?
        
        playerButton.setBackgroundImage(normalImage, forState: UIControlState.Normal)
        playerButton.setBackgroundImage(hightlightedImage, forState: UIControlState.Highlighted)
        playerButton.setBackgroundImage(selectedImage, forState: UIControlState.Selected)

        println("vbPlayer number ")
        println(vbPlayer["number"])

        // Set tag
        var numStr = vbPlayer["number"]! as String
        var numStrToInt: Int = numStr.toInt()!
        playerButton.tag = 2000 + numStrToInt

        // Display button
        self.view.addSubview(playerButton)
        
    }

    func displaySkill() {
        
        println("Adding Actions")
        
        vbSkills = self.getSkills()
        
        var skillsStartX: Int = 740
        var skillsStartY: Int = 400
        var skillsCalcX: Int = 740
        var skillsCalcY: Int = 400
        let skillsXFactor: Int = 70
        let skillsYFactor: Int = 70
        var vbSillColumn: Int = 1
        let skillTagBase: Int = 3000
        
        var vbSkillsIndex: Int = 0
        for vbSkill in vbSkills {

            println(vbSkill)
            println(vbSkillsIndex)
 
            skillsCalcX = skillsStartX + (skillsXFactor * vbSkillsIndex)
            println("vbSillColumn \(vbSillColumn) skillsCalcX \(skillsCalcX)")
            vbSkillsIndex++
            self.displaySkillButton(locationX: CGFloat(skillsCalcX), locationY: CGFloat(skillsCalcY), vbSkill: vbSkill)
            
        }
        
    }
    
    func displaySkillButton(#locationX: CGFloat, locationY: CGFloat, vbSkill: Dictionary<String, String>) {
        
        var buttonWidth = CGFloat(65)
        var buttonHeight = CGFloat(40)
        let buttonCenterX: CGFloat = locationX
        let buttonCenterY: CGFloat = locationY
        
        let vbSkillButton = ToggleButton(frame: CGRectMake(buttonCenterX, buttonCenterY, buttonWidth, buttonHeight))
        
        vbSkillButton.setTitle(vbSkill["name"], forState: UIControlState.Normal)
        vbSkillButton.setTitle(vbSkill["name"], forState: UIControlState.Highlighted)
        
        vbSkillButton.titleLabel!.font =  UIFont(name: "Arial", size: 20)
        vbSkillButton.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        vbSkillButton.setTitleColor(UIColor.purpleColor(), forState: .Highlighted)
        vbSkillButton.setTitleColor(UIColor.redColor(), forState: .Selected)
        
        // Round button corners
        vbSkillButton.layer.masksToBounds = true
        vbSkillButton.layer.cornerRadius = 20.0
        vbSkillButton.clipsToBounds = true
        
        // Add Touch action
        vbSkillButton.addTarget(self, action: "vbSkillClicked:", forControlEvents: .TouchUpInside)
        
        // Backgrounds
        let normalImage = UIImage(named: "button-blue-dark") as UIImage?
        let hightlightedImage = UIImage(named: "button-dark-blue") as UIImage?
        let selectedImage = UIImage(named: "button-light-blue") as UIImage?
        
        vbSkillButton.setBackgroundImage(normalImage, forState: UIControlState.Normal)
        vbSkillButton.setBackgroundImage(hightlightedImage, forState: UIControlState.Highlighted)
        vbSkillButton.setBackgroundImage(selectedImage, forState: UIControlState.Selected)
        
        println("vbSkill name ")
        println(vbSkill["name"])
        
        // Set tag
        var numStr = vbSkill["id"]! as String
        var numStrToInt: Int = numStr.toInt()!
        vbSkillButton.tag = 3000 + numStrToInt
        
        // Display button
        self.view.addSubview(vbSkillButton)
        
    }
    
    func displayRotation() {
        
        println("Adding Actions")
        
        vbRotations = self.getRotations()
        
        var rotationsStartX: Int = 730
        var rotationsStartY: Int = 450
        var rotationsCalcX: Int = 730
        var rotationsCalcY: Int = 450
        let rotationsXFactor: Int = 42
        let rotationsYFactor: Int = 40

        var vbRotationsColumn: Int = 1

        let rotationsTagBase: Int = 4000
        
 
        var vbRotationsIndex: Int = 0
        for vbRotation in vbRotations {
            println(vbRotation)

            println(vbRotationsIndex)
            rotationsCalcX = rotationsStartX + (rotationsXFactor * vbRotationsIndex)

            println("vbRotationsColumn \(vbRotationsColumn) rotationsCalcX \(rotationsCalcX)")
            vbRotationsIndex++
            self.displayRotationButton(locationX: CGFloat(rotationsCalcX), locationY: CGFloat(rotationsCalcY), vbRotation: vbRotation)
            
        }
        
    }
    
    func displayRotationButton(#locationX: CGFloat, locationY: CGFloat, vbRotation: Dictionary<String, String>) {
        
        var buttonWidth = CGFloat(40)
        var buttonHeight = CGFloat(40)
        let buttonCenterX: CGFloat = locationX
        let buttonCenterY: CGFloat = locationY
        
        let rotationButton = ToggleButton(frame: CGRectMake(buttonCenterX, buttonCenterY, buttonWidth, buttonHeight))
        
        rotationButton.setTitle(vbRotation["name"], forState: UIControlState.Normal)
        rotationButton.setTitle(vbRotation["name"], forState: UIControlState.Highlighted)
        
        rotationButton.titleLabel!.font =  UIFont(name: "Arial", size: 14)
        rotationButton.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        rotationButton.setTitleColor(UIColor.purpleColor(), forState: .Highlighted)
        rotationButton.setTitleColor(UIColor.redColor(), forState: .Selected)
        
        // Round button corners
        rotationButton.layer.masksToBounds = true
        rotationButton.layer.cornerRadius = 20.0
        rotationButton.clipsToBounds = true
        
        // Add Touch action
        rotationButton.addTarget(self, action: "vbRotationClicked:", forControlEvents: .TouchUpInside)
        
        // Backgrounds
        let normalImage = UIImage(named: "button-blue-dark") as UIImage?
        let hightlightedImage = UIImage(named: "button-dark-blue") as UIImage?
        let selectedImage = UIImage(named: "button-light-blue") as UIImage?
        
        rotationButton.setBackgroundImage(normalImage, forState: UIControlState.Normal)
        rotationButton.setBackgroundImage(hightlightedImage, forState: UIControlState.Highlighted)
        rotationButton.setBackgroundImage(selectedImage, forState: UIControlState.Selected)
        
        println("vbRotation name ")
        println(vbRotation["name"])
        
        // Set tag
        var numStr = vbRotation["id"]! as String
        var numStrToInt: Int = numStr.toInt()!
        rotationButton.tag = 4000 + numStrToInt
        
        // Display button
        self.view.addSubview(rotationButton)
        
    }
    
    func displayAction() {
        
        println("Adding Actions")
        
        vbActions = self.getActions()
        
        var actionsStartX: Int = 740
        var actionsStartY: Int = 500
        var actionsCalcX: Int = 740
        var actionsCalcY: Int = 500
        let actionsXFactor: Int = 42
        let actionsYFactor: Int = 42
        let actionsNumOfColumes: Int = 5
        var vbActionColumn: Int = 1
        var vbActionsRow: Int = 1
        let actionTagBase: Int = 5000
        
        var vbActionsIndex: Int = 0
        for vbAction in vbActions {
            println(vbAction)
            //                println(vbAction["number"])
            println(vbActionsIndex)
            vbActionsRow = Int(vbActionsIndex / actionsNumOfColumes)
            vbActionColumn = vbActionsIndex % actionsNumOfColumes
            actionsCalcX = actionsStartX + (actionsXFactor * vbActionColumn)
            actionsCalcY = actionsStartY + (actionsYFactor * vbActionsRow)
            println("vbActionColumn \(vbActionColumn) vbActionsRow \(vbActionsRow) actionsCalcX \(actionsCalcX) actionsCalcY \(actionsCalcY)")
            vbActionsIndex++
            self.displayActionButton(locationX: CGFloat(actionsCalcX), locationY: CGFloat(actionsCalcY), vbAction: vbAction)
            
        }
        
    }
    
    func displayActionButton(#locationX: CGFloat, locationY: CGFloat, vbAction: Dictionary<String, String>) {
        
        var buttonWidth = CGFloat(40)
        var buttonHeight = CGFloat(40)
        let buttonCenterX: CGFloat = locationX
        let buttonCenterY: CGFloat = locationY
        
        let playerButton = ToggleButton(frame: CGRectMake(buttonCenterX, buttonCenterY, buttonWidth, buttonHeight))
        
        playerButton.setTitle(vbAction["name"], forState: UIControlState.Normal)
        playerButton.setTitle(vbAction["name"], forState: UIControlState.Highlighted)
        
        playerButton.titleLabel!.font =  UIFont(name: "Arial", size: 14)
        playerButton.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        playerButton.setTitleColor(UIColor.purpleColor(), forState: .Highlighted)
        playerButton.setTitleColor(UIColor.redColor(), forState: .Selected)
        
        // Round button corners
        playerButton.layer.masksToBounds = true
        playerButton.layer.cornerRadius = 20.0
        playerButton.clipsToBounds = true
        
        // Add Touch action
        playerButton.addTarget(self, action: "vbActionClicked:", forControlEvents: .TouchUpInside)
        
        // Backgrounds
        let normalImage = UIImage(named: "button-blue-dark") as UIImage?
        let hightlightedImage = UIImage(named: "button-dark-blue") as UIImage?
        let selectedImage = UIImage(named: "button-light-blue") as UIImage?
        
        playerButton.setBackgroundImage(normalImage, forState: UIControlState.Normal)
        playerButton.setBackgroundImage(hightlightedImage, forState: UIControlState.Highlighted)
        playerButton.setBackgroundImage(selectedImage, forState: UIControlState.Selected)
        
        println("vbAction name ")
        println(vbAction["name"])
        
        // Set tag
        var numStr = vbAction["id"]! as String
        var numStrToInt: Int = numStr.toInt()!
        playerButton.tag = 5000 + numStrToInt
        
        // Display button
        self.view.addSubview(playerButton)
        
    }
    
    func displayScore() {
        
        println("Adding Actions")
        
        vbScores = self.getScores()
        
        var scoresStartX: Int = 740
        var scoresStartY: Int = 600
        var scoresCalcX: Int = 740
        var scoresCalcY: Int = 600
        let scoresXFactor: Int = 45
        let scoresYFactor: Int = 45
        var vbScoresColumn: Int = 1
        let scoresTagBase: Int = 6000
        var vbScoresIndex: Int = 0
        for vbScore in vbScores {
            println(vbScore)
            println(vbScoresIndex)

            scoresCalcX = scoresStartX + (scoresXFactor * vbScoresIndex)
            println("vbScoresColumn \(vbScoresColumn) scoresCalcX \(scoresCalcX)")
            vbScoresIndex++
            self.displayScoreButton(locationX: CGFloat(scoresCalcX), locationY: CGFloat(scoresCalcY), vbScore: vbScore)
            
        }
        
    }
    
    func displayScoreButton(#locationX: CGFloat, locationY: CGFloat, vbScore: Dictionary<String, String>) {
        
        var buttonWidth = CGFloat(40)
        var buttonHeight = CGFloat(40)
        let buttonCenterX: CGFloat = locationX
        let buttonCenterY: CGFloat = locationY
        
        let scoreButton = ToggleButton(frame: CGRectMake(buttonCenterX, buttonCenterY, buttonWidth, buttonHeight))
        
        scoreButton.setTitle(vbScore["name"], forState: UIControlState.Normal)
        scoreButton.setTitle(vbScore["name"], forState: UIControlState.Highlighted)
        
        scoreButton.titleLabel!.font =  UIFont(name: "Arial", size: 14)
        scoreButton.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        scoreButton.setTitleColor(UIColor.purpleColor(), forState: .Highlighted)
        scoreButton.setTitleColor(UIColor.redColor(), forState: .Selected)
        
        // Round button corners
        scoreButton.layer.masksToBounds = true
        scoreButton.layer.cornerRadius = 20.0
        scoreButton.clipsToBounds = true
        
        // Add Touch action
        scoreButton.addTarget(self, action: "vbScoreClicked:", forControlEvents: .TouchUpInside)
        
        // Backgrounds
        let normalImage = UIImage(named: "button-blue-dark") as UIImage?
        let hightlightedImage = UIImage(named: "button-dark-blue") as UIImage?
        let selectedImage = UIImage(named: "button-light-blue") as UIImage?
        
        scoreButton.setBackgroundImage(normalImage, forState: UIControlState.Normal)
        scoreButton.setBackgroundImage(hightlightedImage, forState: UIControlState.Highlighted)
        scoreButton.setBackgroundImage(selectedImage, forState: UIControlState.Selected)
        
        println("vbScore name ")
        println(vbScore["name"])
        
        // Set tag
        var numStr = vbScore["id"]! as String
        var numStrToInt: Int = numStr.toInt()!
        scoreButton.tag = 6000 + numStrToInt
        
        // Display button
        self.view.addSubview(scoreButton)
        
    }
    
    func displaySubmit() {
        
        println("Adding Submit")
        
        self.displaySubmitButton(locationX: CGFloat(800), locationY: CGFloat(700))
        
    }
    
    func displaySubmitButton(#locationX: CGFloat, locationY: CGFloat) {
        
        var buttonWidth = CGFloat(80)
        var buttonHeight = CGFloat(60)
        let buttonCenterX: CGFloat = locationX
        let buttonCenterY: CGFloat = locationY
        
        let submitButton = ToggleButton(frame: CGRectMake(buttonCenterX, buttonCenterY, buttonWidth, buttonHeight))
        
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
        submitButton.setTitle("Submit", forState: UIControlState.Highlighted)
        
        submitButton.titleLabel!.font =  UIFont(name: "Arial", size: 24)
        submitButton.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        submitButton.setTitleColor(UIColor.purpleColor(), forState: .Highlighted)
        submitButton.setTitleColor(UIColor.redColor(), forState: .Selected)
        
        // Round button corners
        submitButton.layer.masksToBounds = true
        submitButton.layer.cornerRadius = 20.0
        submitButton.clipsToBounds = true
        
        // Add Touch action
        submitButton.addTarget(self, action: "vbSubmitClicked:", forControlEvents: .TouchUpInside)
        
        // Backgrounds
        let normalImage = UIImage(named: "button-blue-dark") as UIImage?
        let hightlightedImage = UIImage(named: "button-dark-blue") as UIImage?
        let selectedImage = UIImage(named: "button-light-blue") as UIImage?
        
        submitButton.setBackgroundImage(normalImage, forState: UIControlState.Normal)
        submitButton.setBackgroundImage(hightlightedImage, forState: UIControlState.Highlighted)
        submitButton.setBackgroundImage(selectedImage, forState: UIControlState.Selected)
        
        // Set tag
        submitButton.tag = 7001
        
        // Display button
        self.view.addSubview(submitButton)
        
    }
    
}

