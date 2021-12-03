(in-package #:coalton-library)

(coalton-toplevel
 (define-instance (Eq Ord)
   (define (== a b)
     (match (Tuple a b)
       ((Tuple (LT) (LT)) True)
       ((Tuple (EQ) (EQ)) True)
       ((Tuple (GT) (GT)) True)
       (_                 False)))
   (define (/= a b)
     (not (== a b))))
 )
