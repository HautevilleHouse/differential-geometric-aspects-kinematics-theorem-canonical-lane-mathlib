import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure CurvatureInvariantsPackage where
  sectionalCurvature : Type u
  ricciCurvature : Type v
  scalarCurvature : Type w
  einsteinTensor : Type x
  curvatureOperator : Type y
  weylTensor : Type z
  sectionalBounded : Prop
  ricciBounded : Prop
  scalarBounded : Prop
  einsteinCondition : Prop
  curvatureOperatorBounded : Prop
  weylVanishing : Prop

structure CurvatureInvariantsEvidence (I : CurvatureInvariantsPackage) where
  sectionalBoundedClosed : I.sectionalBounded
  ricciBoundedClosed : I.ricciBounded
  scalarBoundedClosed : I.scalarBounded
  einsteinConditionClosed : I.einsteinCondition
  curvatureOperatorBoundedClosed : I.curvatureOperatorBounded
  weylVanishingClosed : I.weylVanishing

def CurvatureInvariantsClosed (I : CurvatureInvariantsPackage) : Prop :=
  I.sectionalBounded ∧ I.ricciBounded ∧ I.scalarBounded ∧ I.einsteinCondition ∧ I.curvatureOperatorBounded ∧ I.weylVanishing

theorem curvature_invariants_closed_from_evidence (I : CurvatureInvariantsPackage) (E : CurvatureInvariantsEvidence I) : CurvatureInvariantsClosed I := by
  exact And.intro E.sectionalBoundedClosed (And.intro E.ricciBoundedClosed (And.intro E.scalarBoundedClosed (And.intro E.einsteinConditionClosed (And.intro E.curvatureOperatorBoundedClosed E.weylVanishingClosed))))

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse