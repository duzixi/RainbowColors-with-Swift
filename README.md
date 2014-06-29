Rainbow Colors with Swift
-------------------------

Generate rainbow colors with Swift.
用Swift语言生成🌈彩虹色。

There is only one function to generate the color:
通过一个函数来实现：

- func rainbowColor(x :Float) -> UIColor

parmeter range: 
参数取值范围：

x : 0 ~ 256 * 5 - 1


Exsample of creating all rainbow colors:
生成所有彩虹色的例子：

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let viewHeight:Float = Float(self.view.frame.size.height)
        let viewWidth:Float = Float(self.view.frame.size.width)
        
        //Create all Rainbow Colors
        let inc:Float = 256 * 5 / viewHeight;
        
        for (var i:Float = 0.0; i < 256 * 5; i += inc) {
            let view = UIView();
            view.frame = CGRectMake(0, 0 + i / inc, viewWidth, 1);
            view.backgroundColor = rainbowColor(Float(i));
            self.view.addSubview(view);
        }
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
