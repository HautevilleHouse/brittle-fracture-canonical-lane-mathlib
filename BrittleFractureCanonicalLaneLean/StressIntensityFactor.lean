import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure StressIntensityFactorPackage where
  crackGeometry : Type u
  loadingMode : Type v
  stressField : crackGeometry → loadingMode → ℝ
  stressIntensityFactor : crackGeometry → loadingMode → ℝ
  linearElasticFractureMechanics : Prop
  singularityDominance : Prop
  nearTipAsymptotic : Prop

structure StressIntensityFactorEvidence (S : StressIntensityFactorPackage) where
  linearElasticFractureMechanicsClosed : S.linearElasticFractureMechanics
  singularityDominanceClosed : S.singularityDominance
  nearTipAsymptoticClosed : S.nearTipAsymptotic

def StressIntensityFactorClosed (S : StressIntensityFactorPackage) : Prop :=
  S.linearElasticFractureMechanics ∧ S.singularityDominance ∧ S.nearTipAsymptotic

theorem stress_intensity_factor_closed_from_evidence (S : StressIntensityFactorPackage) (E : StressIntensityFactorEvidence S) : StressIntensityFactorClosed S := by
  exact And.intro E.linearElasticFractureMechanicsClosed (And.intro E.singularityDominanceClosed E.nearTipAsymptoticClosed)

end BrittleFractureCanonicalLaneLean
end HautevilleHouse