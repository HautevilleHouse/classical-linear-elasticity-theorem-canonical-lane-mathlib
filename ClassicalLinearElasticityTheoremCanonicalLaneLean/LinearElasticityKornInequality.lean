import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure KornInequalityPackage where
  coercivityConstant : ℝ
  strainEnergyBound : Prop
  normEquivalence : Prop

structure KornInequalityEvidence (K : KornInequalityPackage) where
  strainEnergyBoundClosed : K.strainEnergyBound
  normEquivalenceClosed : K.normEquivalence

def KornInequalityClosed (K : KornInequalityPackage) : Prop :=
  K.strainEnergyBound ∧ K.normEquivalence

theorem korn_inequality_closed_from_evidence (K : KornInequalityPackage)
    (Ev : KornInequalityEvidence K) : KornInequalityClosed K := by
  exact And.intro Ev.strainEnergyBoundClosed Ev.normEquivalenceClosed

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse