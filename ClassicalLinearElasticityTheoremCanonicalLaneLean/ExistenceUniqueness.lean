import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure ExistenceAndUniquenessPackage where
  weakFormulation : WeakFormulation
  kornInequality : KornInequalityPackage
  laxMilgramConditions : Prop
  existence : ∃ u : weakFormulation.space.functions, WeakSolution.weakEquality u
  uniqueness : ∀ u v, WeakSolution.weakEquality u → WeakSolution.weakEquality v → u = v

def ExistenceUniquenessClosed (E : ExistenceAndUniquenessPackage) : Prop :=
  E.laxMilgramConditions ∧ E.existence ∧ E.uniqueness

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse