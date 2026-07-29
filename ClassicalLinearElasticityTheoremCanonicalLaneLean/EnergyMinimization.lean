import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalLinearElasticityTheoremCanonicalLaneLean

structure EnergyMinimization where
  totalPotentialEnergy : Prop
  strainEnergy : Prop
  externalWork : Prop
  equilibriumAsStationarity : Prop
  convexity : Prop
  coercivity : Prop
  minimizerExistence : Prop
  uniqueness : Prop

structure EnergyMinimizationEvidence (E : EnergyMinimization) where
  totalPotentialEnergyClosed : E.totalPotentialEnergy
  strainEnergyClosed : E.strainEnergy
  externalWorkClosed : E.externalWork
  equilibriumAsStationarityClosed : E.equilibriumAsStationarity
  convexityClosed : E.convexity
  coercivityClosed : E.coercivity
  minimizerExistenceClosed : E.minimizerExistence
  uniquenessClosed : E.uniqueness

def EnergyMinimizationClosed (E : EnergyMinimization) : Prop :=
  E.totalPotentialEnergy ∧ E.strainEnergy ∧ E.externalWork ∧
  E.equilibriumAsStationarity ∧ E.convexity ∧ E.coercivity ∧
  E.minimizerExistence ∧ E.uniqueness

theorem energy_minimization_closed_from_evidence
    (E : EnergyMinimization) (Ev : EnergyMinimizationEvidence E) :
    EnergyMinimizationClosed E := by
  exact And.intro Ev.totalPotentialEnergyClosed
    (And.intro Ev.strainEnergyClosed
      (And.intro Ev.externalWorkClosed
        (And.intro Ev.equilibriumAsStationarityClosed
          (And.intro Ev.convexityClosed
            (And.intro Ev.coercivityClosed
              (And.intro Ev.minimizerExistenceClosed
                Ev.uniquenessClosed))))))

end ClassicalLinearElasticityTheoremCanonicalLaneLean
end HautevilleHouse