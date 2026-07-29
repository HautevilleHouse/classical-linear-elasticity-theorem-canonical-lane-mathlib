import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure WeakFormulationPackage where
  bilinearForm : Type u
  linearFunctional : Type v
  coercivity : Prop
  continuity : Prop
  solutionExistence : Prop

structure WeakFormulationEvidence (W : WeakFormulationPackage) where
  coercivityClosed : W.coercivity
  continuityClosed : W.continuity
  solutionExistenceClosed : W.solutionExistence

def WeakFormulationClosed (W : WeakFormulationPackage) : Prop :=
  W.coercivity ∧ W.continuity ∧ W.solutionExistence

theorem weak_formulation_closed_from_evidence (W : WeakFormulationPackage)
    (Ev : WeakFormulationEvidence W) : WeakFormulationClosed W := by
  exact And.intro Ev.coercivityClosed (And.intro Ev.continuityClosed Ev.solutionExistenceClosed)

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse