Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04352614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647120085;
	h=To:Subject:From:Message-Id:Date;
	bh=2BDpjGqTuUSsitVaYh4dE1gDi4H2pUCdSBBKq+KyEfo=;
	b=S0Z7UfRpSxkP2AIOg6RlSZ2af0H6qtyY0+SG78AtGCroXi/JsAoIwekNUzaKbAD1
	RhzY88TdLKfGYnieC153QVpgqJ9IEKQOXxAIXu1hA6bc04zPRUVDyp2bnSY982RVQ6X
	coIiQjo0/XIr2h+yqRhiui7D7MUisVoNv1MXGVw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647120085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2BDpjGqTuUSsitVaYh4dE1gDi4H2pUCdSBBKq+KyEfo=;
	b=h0AuKZBUuGc9SUyL8D7IUFtPPCDbpczA/LpCZG6y4YEgt7slNGizDXAlSDohRVDY
	RcZ+hgp+2Cix3AykrkvleAyR8YYQCMQ8exy9G0ep5KNZMF4VfhvlF1rDR2E6Im7dDli
	cCotGKpD4wlJuY3COok0l/e09EkO1rwR1vrK1gUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8001eee3-9e3baeda-3ba0-4c61-a150-e2c42f60c97f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e2692714ada353a159ffe0fd830dc512f8a14b96a4be510d0cb558974d89594
Date: Sat, 12 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647120084
