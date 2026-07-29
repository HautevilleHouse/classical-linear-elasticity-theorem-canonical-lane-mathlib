import ClassicalLinearElasticityTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure HookeTensorPackage {A : AdmissibleClass} where
  fourthOrderTensor : Type
  symmetryMinor : Prop
  symmetryMajor : Prop
  positiveDefiniteness : Prop
  voigtRepresentation : Type
  materialSymmetry : Prop

structure HookeTensorEvidence {A : AdmissibleClass} (H : HookeTensorPackage A) where
  symmetryMinorClosed : H.symmetryMinor
  symmetryMajorClosed : H.symmetryMajor
  positiveDefinitenessClosed : H.positiveDefiniteness
  materialSymmetryClosed : H.materialSymmetry

def HookeTensorClosed {A : AdmissibleClass} (H : HookeTensorPackage A) : Prop :=
  H.symmetryMinor ∧ H.symmetryMajor ∧ H.positiveDefiniteness ∧ H.materialSymmetry

theorem hooke_tensor_closed_from_evidence {A : AdmissibleClass}
    (H : HookeTensorPackage A) (E : HookeTensorEvidence H) : HookeTensorClosed H :=
  And.intro E.symmetryMinorClosed (And.intro E.symmetryMajorClosed
    (And.intro E.positiveDefinitenessClosed E.materialSymmetryClosed))

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse