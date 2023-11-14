#include<iostream>
#include<string.h>
using namespace std;
class book
{
	int pri;
	char bname[20];
	char auth[20];
	public:
		void accept()
		{
			cout<<"ENTER THE BOOK NAME,AUTHOR AND PRICE"<<endl;
			cin>>bname>>auth>>pri;
		}
		void display()
		{
			cout<<"THE BOOK NAME IS:::"<<bname<<endl;
			cout<<"THE AUTHOR NAME IS:::"<<auth<<endl;
			cout<<"THE PRICE IS:::"<<pri<<endl;
		}
		void search(char k[20])
		{
			if(strcmp(k,bname)==0)
			{
				cout<<"BOOK FOUND!!!"<<endl;
				cout<<"THE PRICE IS:::"<<pri<<endl;
			}
			else
			{
				cout<<"NO BOOK FOUND"<<endl;
			}
		}
};
int main()
{
         char x[20];
         int n,i;
         cout<<"ENTER THE NO OF DETAILS TO ENTER"<<endl;
		 cin>>n;
		 book b[n];
		 for(i=0;i<n;i++)
		 {
		 	b[i].accept();
		 }	
		 for(i=0;i<n;i++)
		 {
		 	b[i].display();
		 }
		 cout<<"ENTER THE BOOK NAME TO GET PRICE"<<endl;
		 cin>>x;
		 for(i=0;i<n;i++)
		 {
		 	b[i].search(x);
		 }
			 
}