import Mathlib

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheorem

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123def456"

def sourceFiles : List SourceFile :=
  [{ path := "scripts/extract_constants.py", sha256 := "abc", functionCount := 3, parseOk := true }]

end DifferentialGeometricAspectsKinematicsTheorem
end HautevilleHouse