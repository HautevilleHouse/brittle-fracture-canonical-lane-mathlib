import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure BrittleFractureAdmittedObject where
  material : Type u
  crackGeometry : Type v
  loading : Type w
  stressIntensityFactorPackage : StressIntensityFactorPackage
  energyBalancePackage : EnergyBalancePackage
  crackPropagationPackage : CrackPropagationPackage
  fractureToughnessPackage : FractureToughnessPackage
  cohesiveZonePackage : CohesiveZonePackage
  conclusion : Prop

structure BrittleFractureAdmissibleClass where
  object : BrittleFractureAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def brittleFractureClosure (A : BrittleFractureAdmissibleClass) : Prop :=
  (StressIntensityFactorClosed A.object.stressIntensityFactorPackage ∧
   EnergyBalanceClosed A.object.energyBalancePackage ∧
   CrackPropagationClosed A.object.crackPropagationPackage ∧
   FractureToughnessClosed A.object.fractureToughnessPackage ∧
   CohesiveZoneClosed A.object.cohesiveZonePackage) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end BrittleFractureCanonicalLaneLean
end HautevilleHouse