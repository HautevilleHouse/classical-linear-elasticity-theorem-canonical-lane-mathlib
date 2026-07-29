import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure ElasticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure StressStrainRelation where
  stressTensor : Type
  strainTensor : Type
  hookeTensor : Type
  linearRelation : Prop
  symmetryStress : Prop
  symmetryStrain : Prop
  positivityStrainEnergy : Prop

structure ElasticAdmittedObject where
  space : ElasticSpace
  relation : StressStrainRelation
  equilibriumCondition : Prop
  boundaryConditions : Prop
  uniquenessSolution : Prop
  conclusion : uniquenessSolution

def ElasticWitnessClosed (O : ElasticAdmittedObject) : Prop :=
  O.uniquenessSolution

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse