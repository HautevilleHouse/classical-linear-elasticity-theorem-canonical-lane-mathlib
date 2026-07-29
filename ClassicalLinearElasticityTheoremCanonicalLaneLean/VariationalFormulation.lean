import ClassicalLinearElasticityTheoremCanonicalLaneLean.EquilibriumEquations

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure VariationalPackage {A : AdmissibleClass} {H : HookeTensorPackage A}
    {E : EquilibriumPackage H} where
  weakFormulation : Prop
  bilinearForm : Prop
  linearFunctional : Prop
  coercivity : Prop
  continuity : Prop
  laxMilgramApplicable : Prop
  uniqueSolution : Prop

structure VariationalEvidence {A : AdmissibleClass} {H : HookeTensorPackage A}
    {E : EquilibriumPackage H} (V : VariationalPackage E) where
  weakFormulationClosed : V.weakFormulation
  bilinearFormClosed : V.bilinearForm
  linearFunctionalClosed : V.linearFunctional
  coercivityClosed : V.coercivity
  continuityClosed : V.continuity
  laxMilgramApplicableClosed : V.laxMilgramApplicable
  uniqueSolutionClosed : V.uniqueSolution

def VariationalClosed {A : AdmissibleClass} {H : HookeTensorPackage A}
    {E : EquilibriumPackage H} (V : VariationalPackage E) : Prop :=
  V.weakFormulation ∧ V.bilinearForm ∧ V.linearFunctional ∧ V.coercivity ∧
  V.continuity ∧ V.laxMilgramApplicable ∧ V.uniqueSolution

theorem variational_closed_from_evidence {A : AdmissibleClass} {H : HookeTensorPackage A}
    {E : EquilibriumPackage H} (V : VariationalPackage E) (Ev : VariationalEvidence V) :
    VariationalClosed V :=
  And.intro Ev.weakFormulationClosed (And.intro Ev.bilinearFormClosed
    (And.intro Ev.linearFunctionalClosed (And.intro Ev.coercivityClosed
      (And.intro Ev.continuityClosed (And.intro Ev.laxMilgramApplicableClosed Ev.uniqueSolutionClosed)))))

theorem uniqueness_of_weak_solution {A : AdmissibleClass} {H : HookeTensorPackage A}
    {E : EquilibriumPackage H} (V : VariationalPackage E) (Ev : VariationalEvidence V) : V.uniqueSolution :=
  Ev.uniqueSolutionClosed

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse