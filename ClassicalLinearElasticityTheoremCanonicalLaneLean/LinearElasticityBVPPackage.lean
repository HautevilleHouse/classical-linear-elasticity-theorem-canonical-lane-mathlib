import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure BoundaryValueProblemPackage where
  domain : Type u
  boundary : Type v
  tractionCondition : Prop
  displacementCondition : Prop
  wellPosedness : Prop

structure BVPEvidence (B : BoundaryValueProblemPackage) where
  tractionConditionClosed : B.tractionCondition
  displacementConditionClosed : B.displacementCondition
  wellPosednessClosed : B.wellPosedness

def BVPClosed (B : BoundaryValueProblemPackage) : Prop :=
  B.tractionCondition ∧ B.displacementCondition ∧ B.wellPosedness

theorem bvp_closed_from_evidence (B : BoundaryValueProblemPackage)
    (Ev : BVPEvidence B) : BVPClosed B := by
  exact And.intro Ev.tractionConditionClosed (And.intro Ev.displacementConditionClosed Ev.wellPosednessClosed)

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse