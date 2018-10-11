package br.com.ciadomacarrao.dao;
import br.com.ciadomacarrao.conexao.Conexao;
import br.com.ciadomacarrao.model.Pedido;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class PedidoDao {
    public boolean inserir(Pedido p) {
        try {
            String sql = "INSERT INTO pedido (id_pedido, nm_massa, nm_molho, nm_adicional, qtd_comida," +
                    " nm_bebida, qtd_bebida, valor_total, dt_pedido, nm_usuario)" +
                    " VALUES (?,?,?,?,?,?,?,?,?)";
            Connection con = Conexao.getConection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, p.getMassa());
            ps.setString(2, p.getMolho());
            ps.setString(3, p.getAdicional());
            ps.setInt(4, p.getQuantidadeComida());
            ps.setString(5, p.getBebida());
            ps.setInt(6, p.getQuantidadeBebida());
            ps.setFloat(7, p.getValor());
            ps.setString(8, p.getData());
            ps.setString(9, p.getUsuario());

            ps.execute();
            ps.close();
            con.close();
            return true;
        } catch (Exception e) {
            System.out.println("PedidoDao::inserir");
            System.out.println(e.getMessage());
            return false;
        }
    }

    public ArrayList<Pedido> listar() {
        ArrayList<Pedido> lista = new ArrayList<Pedido>();
        try {
            String sql = "SELECT id_pedido, nm_massa, nm_molho, nm_adicional, qtd_comida, " +
                    "nm_bebida, qtd_bebida, valor_total, dt_pedido, nm_usuario" +
                    " FROM pedidos ORDER BY nm_massa";
            Connection con = Conexao.getConection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while ( rs.next() ) {
                Pedido p = new Pedido();
                p.setId(rs.getInt("id_pedido"));
                p.setMassa(rs.getString("nm_massa"));
                p.setMolho(rs.getString("nm_molho"));
                p.setAdicional(rs.getString("nm_adicional"));
                p.setQuantidadeComida(rs.getInt("qtd_comida"));
                p.setBebida(rs.getString("nm_bebida"));
                p.setQuantidadeBebida(rs.getInt("qtd_bebida"));
                p.setValor(rs.getFloat("valor_total"));
                p.setData(rs.getString("dt_pedido"));
                p.setUsuario(rs.getString("nm_usuario"));
                System.out.println(p);
                lista.add(p);
            }
            System.out.println("Listar executado");
            rs.close();
            con.close();
            System.out.println(lista);
            return lista;
        } catch (Exception e) {
            System.out.println("PedidoDao::listar");
            System.out.println(e.getMessage());
        }

       return null;
    }
    public Pedido recuperarPorUsuario(String usuario) {
        try {
            String sql = "SELECT id_pedido, nm_massa, nm_molho, nm_adicional, qtd_comida" +
                    ", nm_bebida, qtd_bebida, valor_total, dt_pedido, nm_usuario" +
                    " FROM pedido WHERE usuario = ? ORDER BY nm_massa";
            Connection con = Conexao.getConection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usuario);
            ResultSet rs = ps.executeQuery();
            Pedido p = null;
            if ( rs.next() ) {
                p = new Pedido();
                p.setId(rs.getInt("id_pedido"));
                p.setMassa(rs.getString("nm_massa"));
                p.setMolho(rs.getString("nm_molho"));
                p.setAdicional(rs.getString("nm_adicional"));
                p.setQuantidadeComida(rs.getInt("qtd_comida"));
                p.setBebida(rs.getString("nm_bebida"));
                p.setQuantidadeBebida(rs.getInt("qtd_bebida"));
                p.setValor(rs.getFloat("valor_total"));
                p.setData(rs.getString("dt_pedido"));
                p.setUsuario(rs.getString("nm_usuario"));
            }
            ps.close();
            con.close();
            return p;
        } catch (Exception e) {
            System.out.println("PedidoDao::recuperarPorUsuario");
            System.out.println(e.getMessage());
            return null;
        }
    }
    public boolean excluir(int id) {
        try {
            String sql = "DELETE FROM pedido WHERE id_pedido=?";
            Connection con = Conexao.getConection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ps.close();
            con.close();
            return true;
        } catch (Exception e) {
            System.out.println("PedidoDao::excluir");
            System.out.println(e.getMessage());
            return false;
        }
    }
}
