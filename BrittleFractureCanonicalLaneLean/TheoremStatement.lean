import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure FractureAdmittedObject where
  crackPath : Type
  energyReleaseRate : Prop
  criticalStressIntensity : Prop
  fractureToughness : Prop
  conclusion : crackPath → energyReleaseRate ∧ criticalStressIntensity ∧ fractureToughness

def FractureWitnessClosed (O : FractureAdmittedObject) : Prop :=
  O.energyReleaseRate ∧ O.criticalStressIntensity ∧ O.fractureToughness

end BrittleFractureCanonicalLaneLean
end HautevilleHouse