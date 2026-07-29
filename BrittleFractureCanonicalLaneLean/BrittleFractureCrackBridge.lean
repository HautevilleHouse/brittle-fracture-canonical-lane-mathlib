import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure CrackDrivingForce where
  energyReleaseRate : Prop
  stressIntensityFactor : Prop
  energyReleaseRateClosed : energyReleaseRate
  stressIntensityFactorClosed : stressIntensityFactor

structure FractureToughness where
  criticalStressIntensity : Prop
  fractureEnergy : Prop
  criticalStressIntensityClosed : criticalStressIntensity
  fractureEnergyClosed : fractureEnergy

structure BrittleFractureAdmissibleObject where
  drivingForce : CrackDrivingForce
  toughness : FractureToughness
  fractureCriterion : Prop
  crackGrowthStable : Prop
  fractureCriterionTerm : fractureCriterion
  crackGrowthStableTerm : crackGrowthStable

def brittleFractureBridgeClosed (O : BrittleFractureAdmissibleObject) : Prop :=
  O.fractureCriterion ∧ O.crackGrowthStable

theorem brittle_fracture_bridge_from_object (O : BrittleFractureAdmissibleObject) :
    brittleFractureBridgeClosed O :=
  And.intro O.fractureCriterionTerm O.crackGrowthStableTerm

end BrittleFractureCanonicalLaneLean
end HautevilleHouse