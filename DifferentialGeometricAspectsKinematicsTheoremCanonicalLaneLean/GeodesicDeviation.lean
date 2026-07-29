import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure GeodesicDeviation where
  jacobiField : Type u
  deviationEquation : Prop
  conjugatePointsClassification : Prop
  curvatureJacobiRelation : Prop

def GeodesicDeviationClosed (G : GeodesicDeviation) : Prop :=
  G.deviationEquation ∧
  G.conjugatePointsClassification ∧
  G.curvatureJacobiRelation

theorem geodesic_deviation_closed_iff (G : GeodesicDeviation) :
    GeodesicDeviationClosed G ↔ (G.deviationEquation ∧ G.conjugatePointsClassification ∧ G.curvatureJacobiRelation) :=
  by rfl

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse
