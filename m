Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5425C1389
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 19:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649620318;
	h=To:Subject:From:Message-Id:Date;
	bh=8ENcUBKDLxGbFv3vjAvbNEXazwxXQar63eyUu5rvGkc=;
	b=Ys9avCFHqhJLnca0S0vje55pyp9h0SG7p8MrVBMG9kowwgOn0RH+kebQvyGz0O+b
	+ysLLzesY6XUmTqhTuimBpxIg2OJxFTvNomnS/WtNFVeGr2IBE0A6t7roR8nOojYw5x
	T7TtlFxDXBd78hGMcZOPeR3CNheQWJ/6H2Qd6xPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649620318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ENcUBKDLxGbFv3vjAvbNEXazwxXQar63eyUu5rvGkc=;
	b=EJeAo2KTm1UaviccWeXTI8kH/Vs8hkxXIQn6H1mxSEZNeCIjWS90Yj1/csDvyuhy
	NSKIDG5OIAxV6B596zeBOnYEeZUEeT1wVzLQP9zi3OG5yc3f9UvIcGR3zTlmcREdkry
	gD0/Z8g1Ht0RVeINW8/lAmjb5OHC3I1LHBg5Qyww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018015087834-af716099-eb22-4287-9836-90ca688b700e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ce47f2dc35e3045640ab86eecc1d8ccd36769b381487e83bb1727d90ae4d3d3
Date: Sun, 10 Apr 2022 19:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649620318
