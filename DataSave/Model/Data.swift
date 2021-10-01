import Foundation
import UIKit

//앱이 가지는 데이터를 정의한다.
struct Data {
    var memo: String
    
    //생성자 생성 - 새 인스턴스로 사용하기 위해서
    init(memo: String) {
        self.memo = memo
    }
}
