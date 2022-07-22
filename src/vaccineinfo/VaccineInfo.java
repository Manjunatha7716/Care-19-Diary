/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vaccineinfo;

/**
 *
 * @author DELL
 */
 import java.util.*;
public class VaccineInfo {

    /**
     * @param args the command line arguments
     */
   
        
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n =10;

        //int adj[][] = new int[n][n];

        int[][] adj = {{1,9,2,3},{7,8,10,99},{1,99,6,99,2},{99,3,5,4}};

        System.out.println("Enter Source vertex");
        int src = scanner.nextInt();

        int[] dist = dijkstra(adj, src);

        for (int i = 0; i < n; i++) {
            if ((src - 1) == i) {
                continue;
            }
            System.out.println("Shortest Distance from " + src + " to " + (i + 1) + " is " + dist[i]);
        }
    }

    static int[] dijkstra(int adj[][], int src) {
        int n = adj.length;
        int[] dist = new int[n];
        boolean[] visited = new boolean[n];
        int min_dist, unvis = -1;

        for (int i = 0; i < n; i++) {
            dist[i] = adj[src - 1][i];
            visited[i] = false;
        }

        visited[src - 1] = true;

        for (int i = 1; i < n; i++) {
            min_dist = Integer.MAX_VALUE;
            for (int j = 0; j < n; j++) {
                if (!visited[j] && dist[j] < min_dist) {
                    unvis = j;
                    min_dist = dist[j];
                }
            }

            visited[unvis] = true;

            for (int v = 0; v < n; v++) {
                if (!visited[v] && dist[unvis] + adj[unvis][v] < dist[v]) {
                    dist[v] = dist[unvis] + adj[unvis][v];
                }
            }
        }

        return dist;
    }
}

    
