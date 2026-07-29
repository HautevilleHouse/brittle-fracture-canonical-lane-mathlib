import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure CrackTipDrivingForce where
  stressIntensityFactor : ℕ
  crackFrontLength : ℕ
  drivingForceValue : ℕ

structure CrackTipDrivingForceEvidence (C : CrackTipDrivingForce) where
  stressIntensityFactorClosed : C.stressIntensityFactor > 0
  crackFrontLengthClosed : C.crackFrontLength > 0
  drivingForceValueClosed : C.drivingForceValue > 0

def CrackTipDrivingForceClosed (C : CrackTipDrivingForce) : Prop :=
  C.stressIntensityFactor > 0 ∧ C.crackFrontLength > 0 ∧ C.drivingForceValue > 0

theorem crack_tip_driving_force_closed_from_evidence
    (C : CrackTipDrivingForce) (E : CrackTipDrivingForceEvidence C) :
    CrackTipDrivingForceClosed C := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.crackFrontLengthClosed E.drivingForceValueClosed)

end BrittleFractureCanonicalLaneLean
end HautevilleHouse