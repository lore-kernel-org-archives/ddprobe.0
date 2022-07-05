Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA352F39
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657051613;
	h=To:Subject:From:Message-Id:Date;
	bh=tUFE1iKOm8kYq8MHLzAbLLKXlrYBocANXbVnaK85fN0=;
	b=e/AQaNyJbYtLdqPwKBzKVKJN2Nqch//Lj4RKwO0e/p2aP8qpJb7KN3v1K3ydRZSm
	Dftzlxe1hNGcQ52jqf7T2Foboi1CekcAi47Jz0apHfCLVPhEj2biU6mCTVVyMK3NtMT
	IptrD9+RuZ9xhc0cGr/Ljc2CD6Ov3nERA4rc7gkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657051613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tUFE1iKOm8kYq8MHLzAbLLKXlrYBocANXbVnaK85fN0=;
	b=T+9dwgWBuH1kKJN6cdlY6DDikhDShu927OGENwVlz3pP5nQkdLnW49D2dmYTPQi/
	KPBSVLJjaFT5lHNrxp2cWUNLXpUOxxiga7BtxZgetREDfJWQo/V0/LvnYXs21A0ie7B
	aeIz7FqcWioszV/ppWNaAWuBbirqpOFvTZPq3EGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cff9046c-9aa70934-a3ac-40ce-9677-7314a91a18d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b25d21cda0d60c7c602933396c6bdc5c31427b798e17d74b1335d02f548a9348
Date: Tue, 5 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657051612
