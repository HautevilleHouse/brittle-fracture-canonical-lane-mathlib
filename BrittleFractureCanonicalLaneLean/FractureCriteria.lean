import BrittleFractureCanonicalLaneLean.EnergyReleaseRate
import BrittleFractureCanonicalLaneLean.StressIntensityFactor

/-!
# Fracture Criteria Package
-/

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure FractureCriteriaPackage {K : FractureToughnessPackage}
    {C : CrackTipFieldsPackage K} {G : EnergyReleaseRatePackage C}
    {S : StressIntensityFactorPackage K} where
  maxTangentialStressCriterion : Prop
  energyReleaseRateCriterion : Prop
  mixedModeInteraction : Prop
  crackGrowthDirection : Prop

structure FractureCriteriaEvidence {K : FractureToughnessPackage}
    {C : CrackTipFieldsPackage K} {G : EnergyReleaseRatePackage C}
    {S : StressIntensityFactorPackage K}
    (F : FractureCriteriaPackage G S) where
  maxTangentialStressCriterionClosed : F.maxTangentialStressCriterion
  energyReleaseRateCriterionClosed : F.energyReleaseRateCriterion
  mixedModeInteractionClosed : F.mixedModeInteraction
  crackGrowthDirectionClosed : F.crackGrowthDirection

def FractureCriteriaClosed {K : FractureToughnessPackage}
    {C : CrackTipFieldsPackage K} {G : EnergyReleaseRatePackage C}
    {S : StressIntensityFactorPackage K}
    (F : FractureCriteriaPackage G S) : Prop :=
  F.maxTangentialStressCriterion ∧ F.energyReleaseRateCriterion ∧
  F.mixedModeInteraction ∧ F.crackGrowthDirection

theorem fracture_criteria_closed_from_evidence
    {K : FractureToughnessPackage} {C : CrackTipFieldsPackage K}
    {G : EnergyReleaseRatePackage C} {S : StressIntensityFactorPackage K}
    (F : FractureCriteriaPackage G S) (E : FractureCriteriaEvidence F) :
    FractureCriteriaClosed F := by
  exact And.intro E.maxTangentialStressCriterionClosed
    (And.intro E.energyReleaseRateCriterionClosed
      (And.intro E.mixedModeInteractionClosed E.crackGrowthDirectionClosed))

end BrittleFractureCanonicalLaneLean
end HautevilleHouse
