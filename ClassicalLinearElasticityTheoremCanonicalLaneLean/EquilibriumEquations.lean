import ClassicalLinearElasticityTheoremCanonicalLaneLean.HookeTensorStructure

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure EquilibriumPackage {A : AdmissibleClass} {H : HookeTensorPackage A} where
  stressEquilibrium : Prop
  tractionBoundaryConditions : Prop
  displacementBC : Prop
  compatibilityConditions : Prop
  strongForm : Prop

structure EquilibriumEvidence {A : AdmissibleClass} {H : HookeTensorPackage A}
    (E : EquilibriumPackage H) where
  stressEquilibriumClosed : E.stressEquilibrium
  tractionBoundaryConditionsClosed : E.tractionBoundaryConditions
  displacementBCClosed : E.displacementBC
  compatibilityConditionsClosed : E.compatibilityConditions
  strongFormClosed : E.strongForm

def EquilibriumClosed {A : AdmissibleClass} {H : HookeTensorPackage A}
    (E : EquilibriumPackage H) : Prop :=
  E.stressEquilibrium ∧ E.tractionBoundaryConditions ∧ E.displacementBC ∧
  E.compatibilityConditions ∧ E.strongForm

theorem equilibrium_closed_from_evidence {A : AdmissibleClass} {H : HookeTensorPackage A}
    (E : EquilibriumPackage H) (Ev : EquilibriumEvidence E) : EquilibriumClosed E :=
  And.intro Ev.stressEquilibriumClosed (And.intro Ev.tractionBoundaryConditionsClosed
    (And.intro Ev.displacementBCClosed (And.intro Ev.compatibilityConditionsClosed Ev.strongFormClosed)))

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse