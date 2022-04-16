Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080EA2590
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 20:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650140398;
	h=To:Subject:From:Message-Id:Date;
	bh=8BHDCaZZjtyFB8S/muXX5u8+5FCE9cTKzZica3ADYME=;
	b=JQ5DXmg0b2NyzcsGmMVZ9dpXgI02qf1/K1d0QvTMHmJ4d2PYvmoJmNaNfbY78fuJ
	m6KvTS3EXSAq8geluvg4GXnuDkgwG0ZzE7NmIL9aCsfEYwHCE2CkqhuRbfWMGBAH21T
	W2QdB1X+Xqj3XW4uZDYWmXTpXPyDQh9h0Xs9r1g8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650140398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8BHDCaZZjtyFB8S/muXX5u8+5FCE9cTKzZica3ADYME=;
	b=d3L5037M3Aa1vKMcucquxbxNIP20w8bX7GjFU0s0ByzLdX0LksDulYZUzgreWsXD
	WXLZ+w+9e9es3EbgiHaD4GKwPp/Zg6OU2zch6KIECDAXUE5v+Z+0HNfVQPPhA8uYtqf
	qlPij5RrBXSz6K4Vd0YSuIP8nV1HMET61t78OQE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180340842dd-82122d34-dab0-453a-8880-e9f21f07e531-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d00731e86482f8fe8ddd738778ca9ebf82a454b3a58903d1787032029c228ee6
Date: Sat, 16 Apr 2022 20:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650140398
