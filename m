Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083B21389
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 14:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653574559;
	h=To:Subject:From:Message-Id:Date;
	bh=TIgze6w1xRd3hS69yXAp1eVhrUnEb8Jp1glxoctdhNo=;
	b=AzuD8bAfguy6OOzQAGPaL/pdBKEzyB7Alk67hY/FC59du7mNKZysJ/p0GpU9RQWt
	ODvdvwyxqscxqEWsGGhrAG08mOjvK5ot+r2AQMqU1H7h3eQGFMda6rVdTdAZ8YNin59
	7rGmV/v0wuMSXpU4amRSqJZ8sNsvFMoDlco5QW5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653574559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TIgze6w1xRd3hS69yXAp1eVhrUnEb8Jp1glxoctdhNo=;
	b=KfxcBz9ChEcuMj8bu19gmYVU8DQhOeogMPOB8MoC5uY1TCRMX7KxEhDH5/gOmc6W
	Ory62m/XF6fwsSIdKuhH2NCOajTRIfFPmxK7DXQRAYy6o/x0ybMW4gx/728RHObGDZq
	z97ZAAYg0Xx5CNEwfEEP39udEbAbshKT1fY/tA4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100b96617-f1894d23-ed5d-44cf-9f34-5227a2e6ae10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57bda3b1254b9ed21584ce28106a0943c54cf09b0492f7a6f3f909140531297b
Date: Thu, 26 May 2022 14:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653574559
