import Foundation
import UIKit

class DataList {
    var storage: [Data]
    //생성자 생성
    init() {
        self.storage = [Data]()
    }
    
    //저장소의 수
    public var count: Int {
        return storage.count
    }
    
    //새로운 Data추가
    public func add(memo: String) {
        self.storage.append(Data(memo: memo))
    }
    
    //기존의 Data삭제
    public func delete(indexRow: Int) {
        self.storage.remove(at: indexRow)
    }
    
    //데이터 저장
    public func itemAt(index: Int) -> Data {
        return storage[index]
    }
}
