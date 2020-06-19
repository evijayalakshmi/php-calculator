<!DOCTYPE html>
<html>
    <head>
        <title>Calculator</title>

        <!-- Add Bootstrap 4.5 dependencies -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>

    <body>
        <?php
            $result='';
            class Calculator
            
            {
               var $num1;
               var $num2;

               function checkOperation($operator) {
                   switch($operator) {
                        case '+':
                        return $this->num1 + $this->num2;
                        break;

                        case '-':
                        return $this->num1 - $this->num2;
                        break;

                        case '*':
                        return $this->num1 * $this->num2;
                        break;

                        case '/':
                        if ($this->num2 == 0)
                            return "Cannot divide by zero";
                        return $this->num1 / $this->num2;
                        break;

                   }
               }

               function getResult($a,$b,$c){
                   $this->num1 = $a;
                   $this->num2 = $b;
                   return $this-> checkOperation($c);
               }
            }

            $cal = new Calculator;
            if(isset($_POST['submit'])){
                $result = $cal->getResult($_POST['num1'],$_POST['num2'],$_POST['operator']);
            }
        ?>


        <div class="container-sm">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">Result</span>
                </div>
                <textarea class="form-control" aria-label="With textarea" readonly id="result"><?php echo $result;?></textarea>
            </div>
            <hr/>
            <form method="post" id="registrationForm">
                <div class="form-group">
                    <label for="inputNumber1">Enter first number</label>
                    <input type="number" step="any" class="form-control" id="inputNumber1" name="num1">
                </div>
                <div class="form-group">
                    <label for="inputNumber2">Enter second number</label>
                    <input type="number" step="any" class="form-control" id="inputNumber2" name="num2">
                </div>
                <select class="form-control form-control-lg" name="operator">
                    <option>+</option>
                    <option>-</option>
                    <option>*</option>
                    <option>/</option>
                </select>
                <button type="submit" name="submit" class="btn btn-primary mt-2 w-50"> = </button>
            </form>
        </div>
    </body>
</html>