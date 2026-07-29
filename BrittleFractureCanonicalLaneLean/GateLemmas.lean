import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

def gateClosed (A : BrittleFractureAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BrittleFractureAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BrittleFractureCanonicalLaneLean
end HautevilleHouse