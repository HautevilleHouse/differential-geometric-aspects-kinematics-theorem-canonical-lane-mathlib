import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure RiemannianCurvatureInvariant where
  sectionalCurvature : Type u
  ricciCurvature : Type v
  scalarCurvature : Type w
  curvatureOperator : Type w
  pinchingConditions : Prop
  curvatureDecompositionClosed : Prop

def RiemannianCurvatureInvariantClosed (R : RiemannianCurvatureInvariant) : Prop :=
  R.pinchingConditions ∧
  R.curvatureDecompositionClosed

theorem riemannian_curvature_invariant_closed_iff (R : RiemannianCurvatureInvariant) :
    RiemannianCurvatureInvariantClosed R ↔ (R.pinchingConditions ∧ R.curvatureDecompositionClosed) :=
  by rfl

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse
