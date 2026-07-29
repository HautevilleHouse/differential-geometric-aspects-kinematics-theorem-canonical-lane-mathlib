import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure GeodesicPackage where
  manifold : Type u
  metric : Type v
  geodesicEquation : Type w
  exponentialMap : Type x
  jacobiFields : Type y
  completeManifold : Prop
  geodesicExistence : Prop
  exponentialMapDefined : Prop
  jacobiEquationSatisfied : Prop
  conjugatePointsDefined : Prop

structure GeodesicEvidence (G : GeodesicPackage) where
  completeManifoldClosed : G.completeManifold
  geodesicExistenceClosed : G.geodesicExistence
  exponentialMapDefinedClosed : G.exponentialMapDefined
  jacobiEquationSatisfiedClosed : G.jacobiEquationSatisfied
  conjugatePointsDefinedClosed : G.conjugatePointsDefined

def GeodesicClosed (G : GeodesicPackage) : Prop :=
  G.completeManifold ∧ G.geodesicExistence ∧ G.exponentialMapDefined ∧ G.jacobiEquationSatisfied ∧ G.conjugatePointsDefined

theorem geodesic_closed_from_evidence (G : GeodesicPackage) (E : GeodesicEvidence G) : GeodesicClosed G := by
  exact And.intro E.completeManifoldClosed
    (And.intro E.geodesicExistenceClosed
      (And.intro E.exponentialMapDefinedClosed
        (And.intro E.jacobiEquationSatisfiedClosed E.conjugatePointsDefinedClosed)))

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse
