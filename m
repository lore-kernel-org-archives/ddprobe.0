Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6624B7FA
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661164852;
	h=To:Subject:From:Message-Id:Date;
	bh=ooWH8o6zUOKOJr4B1VH6BzwUYle4J9u1oe2a3yZE5L8=;
	b=f/mwSVrj6vHBvkZ30u1DDx8tvQFpMk6vEBOyIyal10RbPCfI+JJNp70Z0BJxbqd+
	SzDFtbLtnZ38DDmBdwkUXW+kP0z3cXPJzIMBWeS7GOnIMRJdjtw4dNSwEeZi3fkLlaW
	AkmKZb2Rk3litdCXZLRI6RpAP5Tntu82R3VOG2qQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661164852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ooWH8o6zUOKOJr4B1VH6BzwUYle4J9u1oe2a3yZE5L8=;
	b=hdlC15/N2sBt+JgaHzWAHi40gIHCIyUqeKU4nf6XqhnUSuKNUKiNT2q7BDrLM8T3
	qZuLBT33rTcgqLwkR40eVOMgwtw/PcFmvUrwQt+btj7Brn3b8GhPdW4rc6Gb6aURe4h
	Ge0gyqNoOO6pv1AkRYE72P657RiVWpdv1aTHx0wc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5241559-b53c00f8-111f-43b4-bc0e-67eb38c5654c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c215e5af12420cc883965510fa742779faf9c04207b6191442d1e77e7be81a9
Date: Mon, 22 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661164852
