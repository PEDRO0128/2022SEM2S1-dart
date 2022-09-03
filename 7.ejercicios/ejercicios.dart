void main() {

// List<int> edades = [15, 10, 12, 11, 18, 30];

// edades.sort();
// print(edades);
// var sum= (edades.reduce((a, b) => a + b)/6);

// print(edades.first);
// print(edades.last);
// print(sum);


final Lists =[
    [1, 2, 3, 4, 5, 6, 7],
    [1, 2, 4, 5,]
];

 final listafinal = 
 Lists.fold<Set>(Lists.first.toSet(), (a, b) => a.intersection(b.toSet()));
 print(listafinal);

}