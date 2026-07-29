import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure CauchyStressTensor where
  body : ElasticBody
  stressField : body.referenceConfiguration → (Matrix (Fin 3) (Fin 3) ℝ)
  symmetry : ∀ x, stressField x = stressField xᵀ

structure EquilibriumEquation where
  stress : CauchyStressTensor
  bodyForces : body.referenceConfiguration → ℝ^3
  equilibriumCondition : ∀ x, div (stress.stressField) x + bodyForces x = 0

structure ElasticityPDEPackage where
  body : ElasticBody
  stiffness : ElasticityTensor body
  equilibrium : EquilibriumEquation (stress := ...) (bodyForces := ...)
  constitutiveLaw : ∀ x, equilibrium.stress.stressField x = stiffness.stiffnessMatrix x • body.strainTensor x

def ElasticityPDEClosed (E : ElasticityPDEPackage) : Prop :=
  E.constitutiveLaw ∧ E.equilibrium.equilibriumCondition

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse