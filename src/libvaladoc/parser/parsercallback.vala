/* parser.vala
 *
 * Valadoc - a documentation tool for vala.
 * Copyright (C) 2008-2009  Florian Brosch, Didier Villevalois
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
 * Author:
 * 	Didier 'Ptitjes Villevalois <ptitjes@free.fr>
 */

using Gee;

public interface Valadoc.ParserCallback {
	public abstract Object? get_rule_state ();
	public abstract void set_rule_state (Object state);

	public abstract void push_rule (Rule rule);
	public abstract void reduce ();

	public abstract bool would_parent_accept_token (Token token);
	public abstract bool would_parent_reduce_to_rule (Token token, Rule rule);

	public abstract void warning (string message, Token? token = null);
	public abstract void error (string message, Token? token = null) throws ParserError;
}