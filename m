Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA242F25
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 03:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648264798;
	h=To:Subject:From:Message-Id:Date;
	bh=YJ9z3oU7PurdqJxgaK5SaZFFJb/eTlniAheQPt+0rBM=;
	b=edZIILuVlNHdEDJBrpT0BvI/9EMTlw+GRPzPXW0JPKUlVLvAf5cTdQZISfPOtyeN
	jufgqk2fEENMhgijR29niHYfBnDhHPKX8reBDQFgEQt/j2kyxNKylKZU9IaomOElCHl
	h1WI/trcmywjNTFteZ7ULrTk07gqDESqfoUf6DJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648264798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YJ9z3oU7PurdqJxgaK5SaZFFJb/eTlniAheQPt+0rBM=;
	b=TrLsDrgmhNzWDxypQ3BpBKz0C9yJypsHlwLCW72fKSpiE9O83LwIUFJMdl4V0UHZ
	rW4PFu9/+HI4VkvVFi1JhxLMJBDJjYy+sZ+P6x1R/2/9kBfs1MRZUTX/b/4jd1kir9r
	j3cFGqBFV/gqU7ltMM89rL94LOEzNnyghELfhDj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc43ce026-3abebe5c-2986-40ad-ba9d-213c3daa6071-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2790a042a4fc828fdc0fe599b10920e186396bf878dae5685124d91a3956f64e
Date: Sat, 26 Mar 2022 03:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648264798
