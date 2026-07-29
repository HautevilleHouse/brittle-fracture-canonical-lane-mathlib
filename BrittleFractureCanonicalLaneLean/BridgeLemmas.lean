import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureCanonicalLaneLean.BrittleFractureAdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

def bridgeClosed (A : BrittleFractureAdmissibleClass) : Prop :=
  StressIntensityFactorClosed A.object.stressIntensityFactorPackage ∧
  EnergyBalanceClosed A.object.energyBalancePackage ∧
  CrackPropagationClosed A.object.crackPropagationPackage ∧
  FractureToughnessClosed A.object.fractureToughnessPackage ∧
  CohesiveZoneClosed A.object.cohesiveZonePackage

theorem bridge_from_admissible_class (A : BrittleFractureAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end BrittleFractureCanonicalLaneLean
end HautevilleHouse