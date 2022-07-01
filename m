Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8102E1C36
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656684412;
	h=To:Subject:From:Message-Id:Date;
	bh=y2Vy1TgYAs+IhB2NnYafQRAdi+/tSDnJKIwfp2WM2C8=;
	b=MkoIBs/Nch3YUlM2tVpUbaeWqA9yI0h2MgMsevcJDjUQuE9CzBzaaCGMsSnq57Et
	UEjbEz02MTXyNFMZwiWkodMAlrYYXu/WLcGCzEb9Fwrqe8A793iaNSXRFigINz9UYM/
	2/scti9jj6+NqAf4bosBGn58aqrdlmwFXO/WDMBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656684412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y2Vy1TgYAs+IhB2NnYafQRAdi+/tSDnJKIwfp2WM2C8=;
	b=RDF5UYoA4JB93eS7Eh0JByPHV0SckkapWEPgERo0qOhW8gVaadcyioHaLiZj3emp
	3VL995/Pxrq9tayPn76ZBNQe48mO9YaQRSLkOAAQBd4Spta164kOmq6RNbvjTEgKA3w
	8ai6P2RRT63snqihLdTahohDsb4fOwSL0QKSZkR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba15fd90-622090df-47ea-43aa-9231-ddae83c5cf4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a426a4e775907a3d6c5982045f6daeca21ad99263ad19bc2a91f8f20b5c97b9f
Date: Fri, 1 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656684412
