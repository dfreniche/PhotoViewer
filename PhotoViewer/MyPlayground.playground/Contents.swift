import UIKit

var str = "https://lh3.ggpht.com/KWH-9MnQWsKwIWIolXcoCe5JiMXHvV8w_3J91FSBSp4uSThh5RvkOuG7MjfBH9np_IQ=w300"

extension String {
    func loadImage() -> UIImage {
        if let url = NSURL(string: self),
            let data = NSData(contentsOfURL: url),
            let image = UIImage(data: data) {
                return image
        }
        return UIImage()
    }
}

str.loadImage()


"http://spf.fotolog.com/photo/47/1/80/jartokan/1098803800_f.jpg".loadImage()
