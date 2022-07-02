Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0A14414
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656793612;
	h=To:Subject:From:Message-Id:Date;
	bh=y2X1FV2WSNpwvVebf8NX4K03GDa/29zXekwFmUWdqr8=;
	b=fsKqbEQ265nqWuEdAc5g+9kOf6xTYTp9OQHZkOW3j7xXwGsvkuf9n+6rnHynp2dO
	Xqg0pU2Iq07XPfaDHXxWysf8bMwHUGnKCeeCoIFe7Yk+HAUmz0uYqFlESinlPDkEfZ7
	LG7u8llV9ETJWmxjx/ES8QnlA8NgmfYrxpszkuFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656793612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y2X1FV2WSNpwvVebf8NX4K03GDa/29zXekwFmUWdqr8=;
	b=XcizpijkPNBqLqWlx8HoFzxsENj/LlTxgE80QPGrXMuehPDBAdOO6p5EbQLPgDRK
	BeTpiUIVYBbLXgNcK/QxYX3pMLbwSuCoaLhpef+z6lCpyRwD1g6JW3DFqT8AhyFdOCA
	/HCrvt6bWWxZfCNZI1vq39HGVqx1yDeu2oU5SxQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c0984013-09297d9b-f43c-4b82-9272-f5377f5ef1a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1146fe0b2244e5bd0e6024e945c05c1f508b707d7718958851dacd1167ea1ac
Date: Sat, 2 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656793612
