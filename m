Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BE83234
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 23:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649979178;
	h=To:Subject:From:Message-Id:Date;
	bh=zsdnzw8WkcvCO5K9gIL3jbCbNVJ8jnU1x/R1q17IlqI=;
	b=Ag1A5HV3HujdljUK8p0YLGkAWiPadHDtMg592Ld/VmuGmm26ZhL+CQIwAeL9K2W2
	M5ubu/tkVG34tqavk4mkDj5/bFxfMBpBEcMccquAh+CJuZCSnJlC76QOm8NUQBk4Cae
	ISP+HgtbBzOtMsIeU+b3zpHADMf8KrXRlYn/S5J4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649979178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zsdnzw8WkcvCO5K9gIL3jbCbNVJ8jnU1x/R1q17IlqI=;
	b=RG/Fqu8CNlgEfQdwWLHE76COq7ba/uTtcGCl4P57uFp/rI/2YXDcbJK4aZ6FTZ59
	CrAu2UmiPezaWPL+OguLnlkuUDNxIYH/GbQi8PrKG7HVS2wmMmFb6m646Yr+K8LlRna
	A/AXd9FIcrMM1EB8dO+QrslC+F8hvOmLLMURH+eY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802a6c3d16-34246c4d-4860-4289-83e0-fe2affbff283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1569f7a063fba5e88b803ebaf34d49bf9f26c464a1011af5ccb0cd73b4fa6dc9
Date: Thu, 14 Apr 2022 23:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649979178
