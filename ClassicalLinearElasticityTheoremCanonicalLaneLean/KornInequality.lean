import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure KornInequality where
  h1SeminormBound : Prop
  rigidMotionKernel : Prop
  coercivityOverSobolevSpace : Prop
  boundaryTermVariant : Prop
  neumannBoundaryCase : Prop
  dirichletBoundaryCase : Prop
  mixedBoundaryCase : Prop
  optimalConstant : Prop

structure KornInequalityEvidence (K : KornInequality) where
  h1SeminormBoundClosed : K.h1SeminormBound
  rigidMotionKernelClosed : K.rigidMotionKernel
  coercivityOverSobolevSpaceClosed : K.coercivityOverSobolevSpace
  boundaryTermVariantClosed : K.boundaryTermVariant
  neumannBoundaryCaseClosed : K.neumannBoundaryCase
  dirichletBoundaryCaseClosed : K.dirichletBoundaryCase
  mixedBoundaryCaseClosed : K.mixedBoundaryCase
  optimalConstantClosed : K.optimalConstant

def KornInequalityClosed (K : KornInequality) : Prop :=
  K.h1SeminormBound ∧ K.rigidMotionKernel ∧ K.coercivityOverSobolevSpace ∧
  K.boundaryTermVariant ∧ K.neumannBoundaryCase ∧ K.dirichletBoundaryCase ∧
  K.mixedBoundaryCase ∧ K.optimalConstant

theorem korn_inequality_closed_from_evidence
    (K : KornInequality) (E : KornInequalityEvidence K) :
    KornInequalityClosed K := by
  exact And.intro E.h1SeminormBoundClosed
    (And.intro E.rigidMotionKernelClosed
      (And.intro E.coercivityOverSobolevSpaceClosed
        (And.intro E.boundaryTermVariantClosed
          (And.intro E.neumannBoundaryCaseClosed
            (And.intro E.dirichletBoundaryCaseClosed
              (And.intro E.mixedBoundaryCaseClosed
                E.optimalConstantClosed))))))

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse