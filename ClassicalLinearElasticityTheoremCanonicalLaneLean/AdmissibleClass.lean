import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure AdmissibleElasticSystem where
  body : ElasticBody 3
  strain : StrainTensor body
  stress : StressTensor body
  constitutive : ConstitutiveLaw body
  equilibrium : EquilibriumEquations body
  closure : ElasticClosure strain stress constitutive equilibrium

def bridgeClosed (A : AdmissibleElasticSystem) : Prop :=
  A.closure

def gateClosed (A : AdmissibleElasticSystem) : Prop :=
  A.closure → A.equilibrium.boundaryTractions = 0

theorem bridge_from_admissible (A : AdmissibleElasticSystem) : bridgeClosed A :=
  A.closure

theorem gate_from_admissible (A : AdmissibleElasticSystem) : gateClosed A :=
by
  intro h
  exact h

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse