import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureCanonicalLaneLean.EnergyReleaseRate
import HautevilleHouse.BrittleFractureCanonicalLaneLean.FractureToughness

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure GriffithCriterion where
  energyReleaseRate : EnergyReleaseRate
  fractureToughness : FractureToughness
  crackPropagationCondition : Prop

structure GriffithCriterionEvidence (G : GriffithCriterion) where
  energyReleaseRateAboveCritical : G.energyReleaseRate.releaseRateValue > G.fractureToughness.toughnessValue
  crackPropagationConditionClosed : G.crackPropagationCondition

def GriffithCriterionClosed (G : GriffithCriterion) : Prop :=
  G.energyReleaseRate.releaseRateValue > G.fractureToughness.toughnessValue ∧
  G.crackPropagationCondition

theorem griffith_criterion_closed_from_evidence (G : GriffithCriterion)
    (E : GriffithCriterionEvidence G) : GriffithCriterionClosed G := by
  exact And.intro E.energyReleaseRateAboveCritical E.crackPropagationConditionClosed

end BrittleFractureCanonicalLaneLean
end HautevilleHouse