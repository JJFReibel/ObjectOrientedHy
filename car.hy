;MIT License

;Copyright (c) 2021 Jean-Jacques François Reibel

;Permission is hereby granted, free of charge, to any person obtaining a copy
;of this software and associated documentation files (the "Software"), to deal
;in the Software without restriction, including without limitation the rights
;to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;copies of the Software, and to permit persons to whom the Software is
;furnished to do so, subject to the following conditions:

;The above copyright notice and this permission notice shall be included in all
;copies or substantial portions of the Software.

;THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;SOFTWARE.

(defclass Car []
  (defn __init__ [self wheels doors cylinders]
    (setv self.wheels wheels
      self.doors doors
      self.cylinders cylinders))
  (defn addWheels  [self wheels]
    (setv self.wheels (+ self.wheels wheels)))
  (defn addDoors  [self doors]
    (setv self.doors (+ self.doors doors)))
  (defn addCylinders  [self cylinders]
    (setv self.cylinders (+ self.cylinders cylinders)))
  (defn deleteWheels  [self wheels]
    (setv self.wheels (- self.wheels wheels)))
  (defn deleteDoors  [self doors]
    (setv self.doors (- self.doors doors)))
  (defn deleteCylinders  [self cylinders]
    (setv self.cylinders (- self.cylinders cylinders)))
  (defn printInfo  [self]
    (print "Wheel check: " self.wheels)
    (print "Door check: " self.doors)
    (print "Cylinder check: " self.cylinders "\n")))

(print "Creating car.")
(setv subaru (Car 4 4 4))
(.printInfo subaru)
(print "Adding wheel directly to car object.")
(.addWheels subaru 1)
(.printInfo subaru)
(print "Removing wheel using object method.")
(.deleteWheels subaru 1)
(.printInfo subaru)
