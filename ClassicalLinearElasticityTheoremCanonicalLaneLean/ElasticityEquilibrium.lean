import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure ElasticityEquilibriumPackage where
  bodyForce : Vector ℝ 3
  tractionBoundary : Set (Vector ℝ 3)
  equilibriumEquation : Prop
  bodyForceSpecified : bodyForce = (0, 0, 0)
  tractionBoundaryBalanced : ∀ t ∈ tractionBoundary, t = (0, 0, 0)
  equilibriumHolds : equilibriumEquation

structure ElasticityEquilibriumEvidence (E : ElasticityEquilibriumPackage) where
  bodyForceSpecifiedClosed : E.bodyForceSpecified
  tractionBoundaryBalancedClosed : E.tractionBoundaryBalanced
  equilibriumHoldsClosed : E.equilibriumHolds

def ElasticityEquilibriumClosed (E : ElasticityEquilibriumPackage) : Prop :=
  E.bodyForceSpecified ∧ E.tractionBoundaryBalanced ∧ E.equilibriumHolds

theorem elasticity_equilibrium_closed_from_evidence (E : ElasticityEquilibriumPackage)
    (Ev : ElasticityEquilibriumEvidence E) : ElasticityEquilibriumClosed E := by
  exact And.intro Ev.bodyForceSpecifiedClosed
    (And.intro Ev.tractionBoundaryBalancedClosed Ev.equilibriumHoldsClosed)

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse