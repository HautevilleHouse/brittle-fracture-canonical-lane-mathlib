import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure EnergyReleaseRate where
  crackExtension : ℕ
  potentialEnergyChange : ℕ
  releaseRateValue : ℕ

structure EnergyReleaseRateEvidence (G : EnergyReleaseRate) where
  crackExtensionClosed : G.crackExtension > 0
  potentialEnergyChangeClosed : G.potentialEnergyChange > 0
  releaseRateValueClosed : G.releaseRateValue > 0

def EnergyReleaseRateClosed (G : EnergyReleaseRate) : Prop :=
  G.crackExtension > 0 ∧ G.potentialEnergyChange > 0 ∧ G.releaseRateValue > 0

theorem energy_release_rate_closed_from_evidence
    (G : EnergyReleaseRate) (E : EnergyReleaseRateEvidence G) :
    EnergyReleaseRateClosed G := by
  exact And.intro E.crackExtensionClosed
    (And.intro E.potentialEnergyChangeClosed E.releaseRateValueClosed)

end BrittleFractureCanonicalLaneLean
end HautevilleHouse