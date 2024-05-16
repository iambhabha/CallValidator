import CallKit

class CallUtils {
    static func checkForActiveCall() -> Bool {
        let callObserver = CXCallObserver()
        for call in callObserver.calls {
            if !call.hasEnded {
                return true
            }
        }
        return false
    }
}
