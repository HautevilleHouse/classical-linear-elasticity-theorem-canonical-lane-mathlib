import canonicalLaneMathlib.AdmissibleClass
import ClassicalLinearElasticityTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

def ConstrainedElasticClosure (A : AdmissibleElasticSystem) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_elastic_endgame (A : AdmissibleElasticSystem) : ConstrainedElasticClosure A :=
by
  exact And.intro (bridge_from_admissible A) (gate_from_admissible A)

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse