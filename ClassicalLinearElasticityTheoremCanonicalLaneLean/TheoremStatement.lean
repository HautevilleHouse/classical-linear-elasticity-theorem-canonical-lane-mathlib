import ClassicalLinearElasticityTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure ElasticityTheoremStatement where
  stressStrainConstitutiveLaw : Prop
  equilibriumEquations : Prop
  boundaryConditions : Prop
  solutionExistence : Prop
  uniqueness : Prop
  regularity : Prop

def elasticity_theorem_statement_holds (S : ElasticityTheoremStatement) : Prop :=
  S.stressStrainConstitutiveLaw ∧ S.equilibriumEquations ∧ S.boundaryConditions ∧
  S.solutionExistence ∧ S.uniqueness ∧ S.regularity

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse
