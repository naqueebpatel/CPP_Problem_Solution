#include<iostream>
#include<string.h>
using namespace std;
class student
{
	int rno;
	char sname[10];
	double per;
	public:
		void accept()
		{
			cout<<"ENTER STUDENT ROLL,NAME AND PERCENT"<<endl;
			cin>>rno>>sname>>per;
		}
		void display()
		{
			cout<<"ROLL NO IS:::"<<rno<<endl;
			cout<<"STUDENT NAME IS:::"<<sname<<endl;
			cout<<"STUDENT PERCENT IS:::"<<per<<endl;
			if(per>=80)
			cout<<"GRADE IS A+"<<endl;
			else if(per<80&&per>60)
			cout<<"GRADE IS A"<<endl;
			else if(per<60&&per>40)
			cout<<"GRADE IS B"<<endl;
			else
			cout<<"GRADE IS F"<<endl;	
		}
};
int main()
{
int n;
cout<<"ENTER THE NO OF STUDENTS"<<endl;
cin>>n;
	student stu[n];
	int i;
	for(i=0;i<n;i++)
	{
		stu[i].accept();
	}
	for(i=0;i<n;i++)
	{
		stu[i].display();
	}
}