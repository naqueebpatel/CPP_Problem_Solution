#include<iostream>
#include<string.h>
using namespace std;
class employee
{
	int eno,sal;
	char ename[20];
	char des[20];
	public:
	      employee()
	      {
	      	eno=1;
	      	strcpy(ename,"NAQUEEB");
	      	strcpy(des,"CEO");
	      	sal=10000;
		  }
		  employee(int no,char name[],char desi[],int saly)
		  {
		  	eno=no;
		  	strcpy(ename,name);
		  	strcpy(des,desi);
		  	sal=saly;
		  }
		  employee(employee &ec)
		  {
		  	eno=ec.eno;
		  	strcpy(ename,ec.ename);
		  	strcpy(des,ec.des);
		  	sal=ec.sal;
		  }
		  void display()
		  {
		  	cout<<"THE EMPLOYEE NUMBER IS:::"<<eno<<endl;
		  	cout<<"THE EMPLOYEE NAME IS:::"<<ename<<endl;
		  	cout<<"THE EMPLOYEE DESIGNATION IS:::"<<des<<endl;
		  	cout<<"THE EMPLOYEE SALARY IS:::"<<sal<<endl;
		  }
};
int main()
{
        int eno,sal;
    	char ename[20];
    	char des[20];
			cout<<"ENTER EMPLOYEE NO,NAME,DESIGNATION AND SALARY"<<endl;
		  	cin>>eno>>ename>>des>>sal;
    employee emp1;
    employee emp2(eno,ename,des,sal);
    employee emp3(emp2);
	emp1.display();
	emp2.display();
	emp3.display();
}