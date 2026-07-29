import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure ConstitutiveModel where
  stressStrainRelation : Prop
  isotropy : Prop
  linearElasticConstants : Prop
  positiveDefiniteElasticityTensor : Prop
  strainEnergyDensity : Prop
  coercivityCondition : Prop
  symmetryCondition : Prop

structure ConstitutiveModelEvidence (C : ConstitutiveModel) where
  stressStrainRelationClosed : C.stressStrainRelation
  isotropyClosed : C.isotropy
  linearElasticConstantsClosed : C.linearElasticConstants
  positiveDefiniteElasticityTensorClosed : C.positiveDefiniteElasticityTensor
  strainEnergyDensityClosed : C.strainEnergyDensity
  coercivityConditionClosed : C.coercivityCondition
  symmetryConditionClosed : C.symmetryCondition

def ConstitutiveModelClosed (C : ConstitutiveModel) : Prop :=
  C.stressStrainRelation ∧ C.isotropy ∧ C.linearElasticConstants ∧
  C.positiveDefiniteElasticityTensor ∧ C.strainEnergyDensity ∧
  C.coercivityCondition ∧ C.symmetryCondition

theorem constitutive_model_closed_from_evidence
    (C : ConstitutiveModel) (E : ConstitutiveModelEvidence C) :
    ConstitutiveModelClosed C := by
  exact And.intro E.stressStrainRelationClosed
    (And.intro E.isotropyClosed
      (And.intro E.linearElasticConstantsClosed
        (And.intro E.positiveDefiniteElasticityTensorClosed
          (And.intro E.strainEnergyDensityClosed
            (And.intro E.coercivityConditionClosed
              E.symmetryConditionClosed)))))

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse