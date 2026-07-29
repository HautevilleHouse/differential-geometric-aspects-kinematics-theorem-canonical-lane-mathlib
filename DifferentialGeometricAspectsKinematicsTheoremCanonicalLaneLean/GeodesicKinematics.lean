import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure GeodesicKinematicsPackage where
  geodesicFlow : Type u
  exponentialMap : Type v
  jacobiField : Type w
  geodesicDeviation : Prop
  exponentialMapLocalDiffeomorphism : Prop
  jacobiEquation : Prop
  conjugatePointClassification : Prop

structure GeodesicKinematicsEvidence (G : GeodesicKinematicsPackage) where
  geodesicDeviationClosed : G.geodesicDeviation
  exponentialMapLocalDiffeomorphismClosed : G.exponentialMapLocalDiffeomorphism
  jacobiEquationClosed : G.jacobiEquation
  conjugatePointClassificationClosed : G.conjugatePointClassification

def GeodesicKinematicsClosed (G : GeodesicKinematicsPackage) : Prop :=
  G.geodesicDeviation ∧ G.exponentialMapLocalDiffeomorphism ∧
  G.jacobiEquation ∧ G.conjugatePointClassification

theorem geodesic_kinematics_closed_from_evidence (G : GeodesicKinematicsPackage) (E : GeodesicKinematicsEvidence G) : GeodesicKinematicsClosed G := by
  exact And.intro E.geodesicDeviationClosed
    (And.intro E.exponentialMapLocalDiffeomorphismClosed
      (And.intro E.jacobiEquationClosed E.conjugatePointClassificationClosed))

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse