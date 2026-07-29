import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure ConstitutiveLawPackage where
  stiffnessTensor : ℝ^3×3×3×3
  stressStrainRelation : (ℝ^3×3) → (ℝ^3×3)
  symmetryConditions : Prop
  positiveDefiniteness : Prop
  stressDefined : ∀ ε, stressStrainRelation ε = stiffnessTensor : ε
  symmetryHolds : symmetryConditions
  positiveDefiniteHolds : positiveDefiniteness

structure ConstitutiveLawEvidence (C : ConstitutiveLawPackage) where
  stressDefinedClosed : C.stressDefined
  symmetryHoldsClosed : C.symmetryHolds
  positiveDefiniteHoldsClosed : C.positiveDefiniteness

def ConstitutiveLawClosed (C : ConstitutiveLawPackage) : Prop :=
  C.stressDefined ∧ C.symmetryHolds ∧ C.positiveDefiniteness

theorem constitutive_law_closed_from_evidence (C : ConstitutiveLawPackage)
    (Ev : ConstitutiveLawEvidence C) : ConstitutiveLawClosed C := by
  exact And.intro Ev.stressDefinedClosed
    (And.intro Ev.symmetryHoldsClosed Ev.positiveDefiniteHoldsClosed)

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse