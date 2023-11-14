#include<iostream>
#include<string.h>
using namespace std;
class worker
{
	char wname[20];
	int nod,pr;
	int salary;
	public:
	 void accept()
	 {
	 	cout<<"ENTER THE NAME,NO OF DAYS WORKED AND PAY-RATE"<<endl;
	 	cin>>wname>>nod>>pr;
	 }
	 int calculate()
	 {
	 	salary=nod*pr;
	 }
	 void display()
	 {
	 	cout<<"THE SALARY OF "<<wname<<"IS "<<salary<<endl;
	 }
};
int main()
{
	int n,i;
	cout<<"ENTER THE NO OF WORKERS"<<endl;
	cin>>n;
	worker obj[n];
	for(i=0;i<n;i++)
	{
		obj[i].accept();
	//}
	//for(i=0;i<n;i++)
	//{
		obj[i].calculate();
	//}
	//for(i=0;i<n;i++)
	//{
		obj[i].display();
	}
	
}