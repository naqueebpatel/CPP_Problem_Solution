#include<iostream>
using namespace std;

class List
{
	public: 
		virtual void store()=0;

		virtual void retrive()=0;
				
};

class Stack : public List
{
	public:
	void store()
	{
			cout<<"Store Of Stack"<<endl;
	}
	void retrive()	
	{
	 	cout<<"Retrieve Of Stack"<<endl;
	}
};


class Queue : public List
{
	public:
	void store()
	{
			cout<<"Store Of Queue"<<endl;;
	}
	void retrive()	
	{
	 	cout<<"Retrieve Of Queue"<<endl;;
	}
};

int main()
{
	Stack s1;
	Queue q1;
	s1.store();
	s1.retrive();
	q1.store();
	q1.retrive();
}