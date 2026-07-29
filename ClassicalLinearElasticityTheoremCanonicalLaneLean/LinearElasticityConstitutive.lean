import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure ElasticityTensorPackage where
  laméFirstParameter : ℝ
  laméSecondParameter : ℝ
  symmetryMinor : Prop
  symmetryMajor : Prop
  positivityCondition : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  symmetryMinorClosed : E.symmetryMinor
  symmetryMajorClosed : E.symmetryMajor
  positivityConditionClosed : E.positivityCondition

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.symmetryMinor ∧ E.symmetryMajor ∧ E.positivityCondition

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.symmetryMinorClosed (And.intro Ev.symmetryMajorClosed Ev.positivityConditionClosed)

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse