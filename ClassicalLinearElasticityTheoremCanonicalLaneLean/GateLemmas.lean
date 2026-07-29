import ClassicalLinearElasticityTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse
