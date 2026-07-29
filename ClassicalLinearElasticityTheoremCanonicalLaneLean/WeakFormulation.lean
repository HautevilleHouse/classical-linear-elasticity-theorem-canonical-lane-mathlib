import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure SobolevSpace where
  functions : Set (referenceConfiguration → ℝ^3)
  innerProduct : (referenceConfiguration → ℝ^3) → (referenceConfiguration → ℝ^3) → ℝ
  completeness : Prop

structure BilinearForm where
  space : SobolevSpace
  form : space.functions → space.functions → ℝ
  coercivity : Prop
  boundedness : Prop

structure WeakSolution where
  form : BilinearForm
  linearFunctional : space.functions → ℝ
  solution : space.functions
  weakEquality : ∀ v : space.functions, form.form solution v = linearFunctional v

def WeakFormulationClosed (W : WeakSolution) : Prop :=
  W.form.coercivity ∧ W.form.boundedness ∧ W.weakEquality

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse