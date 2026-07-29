import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticComplex : Type u
  diracOperator : Type v
  indexClass : Type w
  chernCharacter : Prop
  toddClass : Prop
  atiyahSingerIndexTheorem : Prop
  indexIntegralFormula : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  chernCharacterClosed : I.chernCharacter
  toddClassClosed : I.toddClass
  atiyahSingerIndexTheoremClosed : I.atiyahSingerIndexTheorem
  indexIntegralFormulaClosed : I.indexIntegralFormula

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.chernCharacter ∧ I.toddClass ∧ I.atiyahSingerIndexTheorem ∧ I.indexIntegralFormula

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.chernCharacterClosed
    (And.intro E.toddClassClosed
      (And.intro E.atiyahSingerIndexTheoremClosed E.indexIntegralFormulaClosed))

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse