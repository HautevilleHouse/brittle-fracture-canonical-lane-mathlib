import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure CrackPropagationPackage where
  crackPath : Type u
  propagationLaw : crackPath → ℝ
  parisLaw : Prop
  threshold : Prop
  rateDependence : Prop

structure CrackPropagationEvidence (C : CrackPropagationPackage) where
  parisLawClosed : C.parisLaw
  thresholdClosed : C.threshold
  rateDependenceClosed : C.rateDependence

def CrackPropagationClosed (C : CrackPropagationPackage) : Prop :=
  C.parisLaw ∧ C.threshold ∧ C.rateDependence

theorem crack_propagation_closed_from_evidence (C : CrackPropagationPackage) (E : CrackPropagationEvidence C) : CrackPropagationClosed C := by
  exact And.intro E.parisLawClosed (And.intro E.thresholdClosed E.rateDependenceClosed)

end BrittleFractureCanonicalLaneLean
end HautevilleHouse