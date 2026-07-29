import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure StrainDisplacementPackage where
  displacementField : ℝ^3 → ℝ^3
  infinitesimalStrain : ℝ^3 → ℝ^3×3
  compatibilityCondition : Prop
  displacementSmooth : C¹(ℝ^3, ℝ^3)
  strainDefinition : ∀ x, infinitesimalStrain x = 0.5*((∂ displacementField x) + (∂ displacementField x)ᵀ)
  compatibilityHolds : compatibilityCondition

structure StrainDisplacementEvidence (S : StrainDisplacementPackage) where
  displacementSmoothClosed : S.displacementSmooth
  strainDefinitionClosed : S.strainDefinition
  compatibilityHoldsClosed : S.compatibilityHolds

def StrainDisplacementClosed (S : StrainDisplacementPackage) : Prop :=
  S.displacementSmooth ∧ S.strainDefinition ∧ S.compatibilityHolds

theorem strain_displacement_closed_from_evidence (S : StrainDisplacementPackage)
    (Ev : StrainDisplacementEvidence S) : StrainDisplacementClosed S := by
  exact And.intro Ev.displacementSmoothClosed
    (And.intro Ev.strainDefinitionClosed Ev.compatibilityHoldsClosed)

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse