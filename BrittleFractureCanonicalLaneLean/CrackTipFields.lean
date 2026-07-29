import BrittleFractureCanonicalLaneLean.FractureToughness
import Mathlib.Analysis.Complex.CauchyIntegral

/-!
# Crack Tip Fields Package
-/

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure CrackTipFieldsPackage {K : FractureToughnessPackage} where
  stressFieldAsymptotics : Prop
  displacementFieldAsymptotics : Prop
  singularFieldDominance : Prop
  KFieldRelation : Prop

structure CrackTipFieldsEvidence {K : FractureToughnessPackage}
    (C : CrackTipFieldsPackage K) where
  stressFieldAsymptoticsClosed : C.stressFieldAsymptotics
  displacementFieldAsymptoticsClosed : C.displacementFieldAsymptotics
  singularFieldDominanceClosed : C.singularFieldDominance
  KFieldRelationClosed : C.KFieldRelation

def CrackTipFieldsClosed {K : FractureToughnessPackage}
    (C : CrackTipFieldsPackage K) : Prop :=
  C.stressFieldAsymptotics ∧ C.displacementFieldAsymptotics ∧
  C.singularFieldDominance ∧ C.KFieldRelation

theorem crack_tip_fields_closed_from_evidence
    {K : FractureToughnessPackage} (C : CrackTipFieldsPackage K)
    (E : CrackTipFieldsEvidence C) : CrackTipFieldsClosed C := by
  exact And.intro E.stressFieldAsymptoticsClosed
    (And.intro E.displacementFieldAsymptoticsClosed
      (And.intro E.singularFieldDominanceClosed E.KFieldRelationClosed))

end BrittleFractureCanonicalLaneLean
end HautevilleHouse
