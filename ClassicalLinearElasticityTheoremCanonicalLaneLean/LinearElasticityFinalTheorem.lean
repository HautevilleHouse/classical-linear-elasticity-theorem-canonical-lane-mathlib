import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

def ConstrainedElasticityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_elasticity_endgame (A : AdmissibleClass) :
    ConstrainedElasticityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse