import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure PhaseFieldRegularizationPackage where
  phaseFieldVariable : Prop
  crackSurfaceEnergy : Prop
  regularizationLength : Prop
  GammaConvergenceAsEpsToZero : Prop

structure PhaseFieldRegularizationEvidence (P : PhaseFieldRegularizationPackage) where
  phaseFieldVariableClosed : P.phaseFieldVariable
  crackSurfaceEnergyClosed : P.crackSurfaceEnergy
  regularizationLengthClosed : P.regularizationLength
  GammaConvergenceAsEpsToZeroClosed : P.GammaConvergenceAsEpsToZero

def PhaseFieldRegularizationClosed (P : PhaseFieldRegularizationPackage) : Prop :=
  P.phaseFieldVariable ∧ P.crackSurfaceEnergy ∧
  P.regularizationLength ∧ P.GammaConvergenceAsEpsToZero

theorem phase_field_regularization_closed_from_evidence
    (P : PhaseFieldRegularizationPackage)
    (E : PhaseFieldRegularizationEvidence P) : PhaseFieldRegularizationClosed P := by
  exact And.intro E.phaseFieldVariableClosed
    (And.intro E.crackSurfaceEnergyClosed
      (And.intro E.regularizationLengthClosed E.GammaConvergenceAsEpsToZeroClosed))

end BrittleFractureCanonicalLaneLean
end HautevilleHouse