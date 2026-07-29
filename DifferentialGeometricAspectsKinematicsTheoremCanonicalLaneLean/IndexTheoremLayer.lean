import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticOperator : Type u
  analyticIndex : Type v
  topologicalIndex : Type w
  indexTheoremStatement : Prop
  operatorElliptic : Prop
  analyticIndexWellDefined : Prop
  topologicalIndexWellDefined : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  operatorEllipticClosed : I.operatorElliptic
  analyticIndexWellDefinedClosed : I.analyticIndexWellDefined
  topologicalIndexWellDefinedClosed : I.topologicalIndexWellDefined
  indexTheoremStatementClosed : I.indexTheoremStatement

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.operatorElliptic ∧ I.analyticIndexWellDefined ∧ I.topologicalIndexWellDefined ∧ I.indexTheoremStatement

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.operatorEllipticClosed (And.intro E.analyticIndexWellDefinedClosed (And.intro E.topologicalIndexWellDefinedClosed E.indexTheoremStatementClosed))

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse