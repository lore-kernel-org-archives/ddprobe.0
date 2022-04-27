Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F01621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 00:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651020418;
	h=To:Subject:From:Message-Id:Date;
	bh=Td7Iz4a5AFOVzFDeUg3laNWkYHLRlvLWPTif438e074=;
	b=ATo4lD3BpEjVDsswp4/+GMkcI0xHEgaCQzxY9RVi4NBKcMT4ALX68cqF2++px5jT
	GdqBFYMyUdY9pGCV09zK0rqv9K48lQ0JuoEq3JnToyBXGEMvx/o1t4Oc5jEV/p1ZA3O
	PpdySaVPSLN5XbzCyPX+rleLZniLkWcEJN153910=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651020418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Td7Iz4a5AFOVzFDeUg3laNWkYHLRlvLWPTif438e074=;
	b=cI/4v9F9UurgSmVYRLYnnkZaCBJbid2JgaPI08z/vJfU1EnWwNLPGR/KGC1ebpgR
	7VLEvRtBlUvHxXS2ZAA/ulxZGcr1MWb1qcsw0p5+L2izQoooUICJwYExZbhKDf/xlKQ
	1/F+Tf08xXICqjL0J4wcVnFL3u5cuABv4shepogw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180687c4d24-0717c8fd-7225-4df4-a63b-a35071e57b0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d75c245aec47641251191de2765610d3f19dcee95758752aa39d384a5080aa5
Date: Wed, 27 Apr 2022 00:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651020418
