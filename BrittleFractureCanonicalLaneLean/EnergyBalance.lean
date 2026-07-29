import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure EnergyBalancePackage where
  elasticStrainEnergy : Type u
  fractureDissipation : Type v
  totalEnergy : Type w
  griffithCriterion : Prop
  criticalEnergyReleaseRate : Prop
  stabilityCondition : Prop

structure EnergyBalanceEvidence (E : EnergyBalancePackage) where
  griffithCriterionClosed : E.griffithCriterion
  criticalEnergyReleaseRateClosed : E.criticalEnergyReleaseRate
  stabilityConditionClosed : E.stabilityCondition

def EnergyBalanceClosed (E : EnergyBalancePackage) : Prop :=
  E.griffithCriterion ∧ E.criticalEnergyReleaseRate ∧ E.stabilityCondition

theorem energy_balance_closed_from_evidence (E : EnergyBalancePackage) (Ev : EnergyBalanceEvidence E) : EnergyBalanceClosed E := by
  exact And.intro Ev.griffithCriterionClosed (And.intro Ev.criticalEnergyReleaseRateClosed Ev.stabilityConditionClosed)

end BrittleFractureCanonicalLaneLean
end HautevilleHouse