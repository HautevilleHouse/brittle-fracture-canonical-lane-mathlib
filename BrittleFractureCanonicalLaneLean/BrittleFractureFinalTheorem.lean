import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureCanonicalLaneLean.BrittleFractureCrackBridge
import HautevilleHouse.BrittleFractureCanonicalLaneLean.BrittleFractureGriffithGate

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

def ConstrainedBrittleFractureClosure (A : AdmissibleClass) : Prop :=
  brittleFractureBridgeClosed A ∧ brittleFractureGateClosed A

theorem constrained_brittle_fracture_endgame (A : AdmissibleClass) :
    ConstrainedBrittleFractureClosure A :=
  And.intro (brittle_fracture_bridge_from_object A) (brittle_fracture_gate_from_admissible_class A)

end BrittleFractureCanonicalLaneLean
end HautevilleHouse