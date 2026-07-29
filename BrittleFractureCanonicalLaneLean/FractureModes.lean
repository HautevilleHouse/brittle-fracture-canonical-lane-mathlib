import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure FractureModesPackage where
  modeI : Prop
  modeII : Prop
  modeIII : Prop
  mixedMode : Prop
  loadingConditions : Prop

structure FractureModesEvidence (P : FractureModesPackage) where
  modeIClosed : P.modeI
  modeIIClosed : P.modeII
  modeIIIClosed : P.modeIII
  mixedModeClosed : P.mixedMode
  loadingConditionsClosed : P.loadingConditions

def FractureModesClosed (P : FractureModesPackage) : Prop :=
  P.modeI ∧ P.modeII ∧ P.modeIII ∧ P.mixedMode ∧ P.loadingConditions

theorem fracture_modes_closed_from_evidence (P : FractureModesPackage) (E : FractureModesEvidence P) :
    FractureModesClosed P := by
  exact And.intro E.modeIClosed (And.intro E.modeIIClosed (And.intro E.modeIIIClosed (And.intro E.mixedModeClosed E.loadingConditionsClosed)))

end BrittleFractureCanonicalLaneLean
end HautevilleHouse