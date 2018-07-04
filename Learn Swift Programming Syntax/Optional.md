# Learn Swift Programming Syntax
## 1. Optional Type
    //make variable have nil
    var z: Int ?
    var string: String
    string = "123"
    z = Int(string)

    //initialize the var in class to be nil
    class NewViewController: UIViewController{
        var startButton: UIbutton!
    }

    //if statement 
    if let judge = z{
        //do if z is not nil
    }
    else{
        //do if z is nil
    }
### Optional Chaining
    var imgView = UIImageView()
    imgView.image = UIImage(named: sample)
    if let judge = imgView.image?.size{
    }
    else{
        
    }
### unwrapping optional  
    //make variable have nil
    var z: Int ?
    var string: String
    string = "123"
    z = Int(string)
    let x = z! * 2

    //Implicitly Unwrapped Optionals
    var z: Int ?
    var string: String
    string = "123"
    z = Int(string)!
    let x = z * 2

### casting with as? and as!
    if let a = val1 as! type/class{
        //do something if val1 is this class/type and not nil
    }



