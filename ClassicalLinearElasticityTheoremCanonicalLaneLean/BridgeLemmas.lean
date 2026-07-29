import ClassicalLinearElasticityTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ElasticityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse
