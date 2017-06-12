func httpsGet(){
        let url = "https://2017.key-p.com/model/get_model.php"
        let session = URLSession.shared
        let task = session.dataTask(with: URL(string:url)!) { (data, response, error) in
            if error != nil{
                print(error)
                return
            }
            
            do{
                let json = try(JSONSerialization.jsonObject(with: data!, options: .mutableContainers)) as! NSDictionary
                let top = json as! NSDictionary
                if top["result"] as! String == "ok"{
                    print(top["result"] as! String)
                    let aa = top["products"] as! NSArray
                    for roop in aa {
                        let bb = roop as! NSDictionary
                        print (bb["product_id"] as? String)
                        let cc = roop as! NSDictionary
                        print (cc["name"] as? String)
                    }
                }else{
                    print(top["result"] as! String)
                    print(top["message"] as! String)
                }
                
            }catch let err{
                print (err)
            }
        }
        task.resume()
    }
