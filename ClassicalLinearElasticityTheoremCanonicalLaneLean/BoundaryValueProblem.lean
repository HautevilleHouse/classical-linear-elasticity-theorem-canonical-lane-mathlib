import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure BoundaryValueProblem where
  domainRegularity : Prop
  boundaryConditions : Prop
  tractionBoundary : Prop
  displacementBoundary : Prop
  mixedBoundary : Prop
  wellPosedness : Prop
  existenceAndUniqueness : Prop

structure BoundaryValueProblemEvidence (B : BoundaryValueProblem) where
  domainRegularityClosed : B.domainRegularity
  boundaryConditionsClosed : B.boundaryConditions
  tractionBoundaryClosed : B.tractionBoundary
  displacementBoundaryClosed : B.displacementBoundary
  mixedBoundaryClosed : B.mixedBoundary
  wellPosednessClosed : B.wellPosedness
  existenceAndUniquenessClosed : B.existenceAndUniqueness

def BoundaryValueProblemClosed (B : BoundaryValueProblem) : Prop :=
  B.domainRegularity ∧ B.boundaryConditions ∧ B.tractionBoundary ∧
  B.displacementBoundary ∧ B.mixedBoundary ∧ B.wellPosedness ∧
  B.existenceAndUniqueness

theorem boundary_value_problem_closed_from_evidence
    (B : BoundaryValueProblem) (E : BoundaryValueProblemEvidence B) :
    BoundaryValueProblemClosed B := by
  exact And.intro E.domainRegularityClosed
    (And.intro E.boundaryConditionsClosed
      (And.intro E.tractionBoundaryClosed
        (And.intro E.displacementBoundaryClosed
          (And.intro E.mixedBoundaryClosed
            (And.intro E.wellPosednessClosed
              E.existenceAndUniquenessClosed)))))

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse