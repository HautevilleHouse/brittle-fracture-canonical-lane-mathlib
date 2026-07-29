import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureCanonicalLaneLean.BrittleFractureCrackBridge

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

def brittleFractureGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem brittle_fracture_gate_from_admissible_class (A : AdmissibleClass) :
    brittleFractureGateClosed A :=
  A.gateWitness

end BrittleFractureCanonicalLaneLean
end HautevilleHouse