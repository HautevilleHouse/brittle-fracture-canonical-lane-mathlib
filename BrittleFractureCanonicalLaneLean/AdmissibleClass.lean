import BrittleFractureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure AdmissibleClass where
  object : FractureAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FractureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrittleFractureCanonicalLaneLean
end HautevilleHouse
