import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure CrackFrontFieldPackage where
  asymptoticExpansion : Prop
  stressIntensityFactorDefined : Prop
  KFieldBoundedInAdmissibleRegion : Prop
  homogeneityDegree : Prop

structure CrackFrontFieldEvidence (C : CrackFrontFieldPackage) where
  asymptoticExpansionClosed : C.asymptoticExpansion
  stressIntensityFactorDefinedClosed : C.stressIntensityFactorDefined
  KFieldBoundedInAdmissibleRegionClosed : C.KFieldBoundedInAdmissibleRegion
  homogeneityDegreeClosed : C.homogeneityDegree

def CrackFrontFieldClosed (C : CrackFrontFieldPackage) : Prop :=
  C.asymptoticExpansion ∧ C.stressIntensityFactorDefined ∧
  C.KFieldBoundedInAdmissibleRegion ∧ C.homogeneityDegree

theorem crack_front_field_closed_from_evidence (C : CrackFrontFieldPackage)
    (E : CrackFrontFieldEvidence C) : CrackFrontFieldClosed C := by
  exact And.intro E.asymptoticExpansionClosed
    (And.intro E.stressIntensityFactorDefinedClosed
      (And.intro E.KFieldBoundedInAdmissibleRegionClosed E.homogeneityDegreeClosed))

end BrittleFractureCanonicalLaneLean
end HautevilleHouse