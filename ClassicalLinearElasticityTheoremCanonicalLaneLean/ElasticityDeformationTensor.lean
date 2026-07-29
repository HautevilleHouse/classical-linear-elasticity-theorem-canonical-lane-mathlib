import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure ElasticBody where
  referenceConfiguration : Type u
  topology : TopologicalSpace referenceConfiguration
  displacement : referenceConfiguration → ℝ^3
  strainTensor : referenceConfiguration → (Matrix (Fin 3) (Fin 3) ℝ)
  compatibility : Prop

structure LinearizedStrainTensor where
  body : ElasticBody
  smallDisplacement : Prop
  strainDefinition : ∀ x : body.referenceConfiguration,
    body.strainTensor x = (body.displacement x) + (body.displacement x)ᵀ / 2

structure ElasticityTensor where
  body : ElasticBody
  stiffnessMatrix : referenceConfiguration → (Matrix (Fin 3) (Fin 3) (Matrix (Fin 3) (Fin 3) ℝ))
  positivity : Prop
  symmetryConditions : Prop

def ElasticityTensorClosed (E : ElasticityTensor) : Prop :=
  E.positivity ∧ E.symmetryConditions

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse