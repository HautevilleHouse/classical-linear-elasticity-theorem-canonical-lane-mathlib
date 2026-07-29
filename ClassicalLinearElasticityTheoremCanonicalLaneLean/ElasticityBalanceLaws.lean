import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure LinearElasticityBalanceLaws where
  linearMomentumBalance : Prop
  angularMomentumBalance : Prop
  massBalance : Prop
  constitutiveLaw : Prop
  strainDisplacementRelation : Prop
  compatibilityConditions : Prop

structure LinearElasticityBalanceLawsEvidence (B : LinearElasticityBalanceLaws) where
  linearMomentumBalanceClosed : B.linearMomentumBalance
  angularMomentumBalanceClosed : B.angularMomentumBalance
  massBalanceClosed : B.massBalance
  constitutiveLawClosed : B.constitutiveLaw
  strainDisplacementRelationClosed : B.strainDisplacementRelation
  compatibilityConditionsClosed : B.compatibilityConditions

def LinearElasticityBalanceLawsClosed (B : LinearElasticityBalanceLaws) : Prop :=
  B.linearMomentumBalance ∧ B.angularMomentumBalance ∧ B.massBalance ∧
  B.constitutiveLaw ∧ B.strainDisplacementRelation ∧ B.compatibilityConditions

theorem linear_elasticity_balance_laws_closed_from_evidence
    (B : LinearElasticityBalanceLaws) (E : LinearElasticityBalanceLawsEvidence B) :
    LinearElasticityBalanceLawsClosed B := by
  exact And.intro E.linearMomentumBalanceClosed
    (And.intro E.angularMomentumBalanceClosed
      (And.intro E.massBalanceClosed
        (And.intro E.constitutiveLawClosed
          (And.intro E.strainDisplacementRelationClosed
            E.compatibilityConditionsClosed))))

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse