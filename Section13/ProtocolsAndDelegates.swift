
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?

    func assessSituation() {
        print("Can you tell me what happened?")
    }

    func medicalEmergency(){
        delegate?.performCPR()
    }
} 

struct Paramedic: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    func performCPR(){
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {

    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }

    func performCPR(){
        print("The doctor does chest compressions, 30 per second")
    }

    func useStethescope(){
        print("Listening for heart sound.")
    }
}

class Surgeon: Doctor {
    override func performCPR(){
        super.performCPR()
        print("Sings staying alive by the BeeGees zzz.")
    }

    func useElectricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)
let sei = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()

"""
Can you tell me what happened?
The doctor does chest compressions, 30 per second
Sings staying alive by the BeeGees zzz.

emilio의 delegate는 sei로 대체된다. 
"""
