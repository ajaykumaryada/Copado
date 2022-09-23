public class CheckNumberAddToK {
    public static Boolean checkNumber(List<Integer> intVals, Integer k){
        Boolean sumAddsUpFlag = false;
        Set<Integer> diffVals = new Set<Integer>();

        for (Integer intVal : intVals){
            if (diffVals.isEmpty()){
                diffVals.add(k-intVal);
                System.debug('@@diffVals 1 ' + diffVals);
            } else {
                if (diffVals.contains(intVal)){
                    sumAddsUpFlag = true;
                    break;
                } else {
                    diffVals.add(k-intVal);
                    System.debug('@@diffVals 2 ' + diffVals);
                }
            }
        }
        
        return sumAddsUpFlag;
    }
}