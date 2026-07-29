import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureCanonicalLaneLean

structure FractureToughnessPackage where
  material : Type u
  microstructure : Type v
  fractureToughness : material → ℝ
  rCurve : material → ℝ → ℝ
  sizeEffect : Prop
  temperatureDependence : Prop

structure FractureToughnessEvidence (F : FractureToughnessPackage) where
  sizeEffectClosed : F.sizeEffect
  temperatureDependenceClosed : F.temperatureDependence

def FractureToughnessClosed (F : FractureToughnessPackage) : Prop :=
  F.sizeEffect ∧ F.temperatureDependence

theorem fracture_toughness_closed_from_evidence (F : FractureToughnessPackage) (E : FractureToughnessEvidence F) : FractureToughnessClosed F := by
  exact And.intro E.sizeEffectClosed E.temperatureDependenceClosed

end BrittleFractureCanonicalLaneLean
end HautevilleHouse