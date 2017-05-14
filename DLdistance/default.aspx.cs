using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DLdistance
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Submit_Form1(object form1, EventArgs e)
        {
            String inWord1 = word1.Text;
            String inWord2 = word2.Text;

            Answer.Text = CalculateDL(inWord1, inWord2);
        }
        public static string CalculateDL(string w1, string w2)
        {
            try
            {
                // The result
                var Distance = "";
                // Matrix for calculations
                int[,] Dmatrix = new int[w1.Length + 1, w2.Length + 1];
                // processing variables
                int i, j, cost, min1;
                // input words broken into character arrays for comparison on letter at a time
                char[] W1CharArr, W2CharArr;

                // initialize Character arrays
                W1CharArr = w1.ToCharArray();
                W2CharArr = w2.ToCharArray();

                // initialize matrix rows
                for (i = 0; i < w1.Length; i++)
                {
                    Dmatrix[i, 0] = i;
                };
                // initialize matrix Columns
                for (j = 0; j < w2.Length; j++)
                {
                    Dmatrix[0, j] = j;
                };

                // go through matrix and quantify differences in strings into number result
                for (i = 1; i <= w1.Length; i++)
                {
                    for (j = 1; j <= w2.Length; j++)
                    {
                        // compare characters and determine initial cost
                        if (W1CharArr[i - 1] == W2CharArr[j - 1])
                        {
                            cost = 0;
                        }
                        else
                        {
                            cost = 1;
                        };
                        // set initial minimum by comparing deletion and insertion
                        min1 = System.Math.Min(Dmatrix[i - 1, j], Dmatrix[i, j - 1]);
                        // Set Dmatrix value by comparing result above with substitution
                        Dmatrix[i, j] = System.Math.Min(min1, Dmatrix[i - 1, j - 1] + cost);
                        // Now compare and try transposition
                        // This is the Damerau addition to the Levenshtein Distance
                        if (i > 1 && j > 1)
                        {
                            if (W1CharArr[i - 1] == W2CharArr[j - 2] && W1CharArr[i - 2] == W2CharArr[j - 1])
                            {
                                Dmatrix[i, j] = System.Math.Min(Dmatrix[i, j], Dmatrix[i - 2, j - 2] + cost);
                            };
                        };
                    };
                };
                // The Damerau-Levenshtein Distance is now the last entry in the Matrix
                Distance = "The D-L Distance between " + w1 + "and" + w2 + " is: " + Dmatrix[w1.Length, w2.Length].ToString();
                return Distance;
            }
            catch (System.Exception)
            {
                return "An Error occured in the Function Calculating your distance. Please check your two input strings.";
            }
        }
    }
}