import ClassicalLinearElasticityTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "classical-linear-elasticity-canonical-lane",
    theoremObject := "Classical Linear Elasticity Theorem",
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
  }

theorem theorem_specific_endgame_pilot_checked :
    ∀ A : AdmissibleClass, ConstrainedElasticityClosure A := by
  intro A; exact constrained_elasticity_endgame A

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse