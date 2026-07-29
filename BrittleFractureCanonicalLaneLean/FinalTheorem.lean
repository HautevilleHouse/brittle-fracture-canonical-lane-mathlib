import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

def ConstrainedBrittleFractureClosure (A : BrittleFractureAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem brittle_fracture_endgame (A : BrittleFractureAdmissibleClass) : ConstrainedBrittleFractureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrittleFractureCanonicalLaneLean
end HautevilleHouse