import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure CohesiveZoneModelPackage where
  tractionSeparationLaw : Prop
  cohesiveStrengthFinite : Prop
  fractureEnergyFinite : Prop
  processZoneResolution : Prop

structure CohesiveZoneModelEvidence (C : CohesiveZoneModelPackage) where
  tractionSeparationLawClosed : C.tractionSeparationLaw
  cohesiveStrengthFiniteClosed : C.cohesiveStrengthFinite
  fractureEnergyFiniteClosed : C.fractureEnergyFinite
  processZoneResolutionClosed : C.processZoneResolution

def CohesiveZoneModelClosed (C : CohesiveZoneModelPackage) : Prop :=
  C.tractionSeparationLaw ∧ C.cohesiveStrengthFinite ∧
  C.fractureEnergyFinite ∧ C.processZoneResolution

theorem cohesive_zone_model_closed_from_evidence (C : CohesiveZoneModelPackage)
    (E : CohesiveZoneModelEvidence C) : CohesiveZoneModelClosed C := by
  exact And.intro E.tractionSeparationLawClosed
    (And.intro E.cohesiveStrengthFiniteClosed
      (And.intro E.fractureEnergyFiniteClosed E.processZoneResolutionClosed))

end BrittleFractureCanonicalLaneLean
end HautevilleHouse