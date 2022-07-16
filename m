Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0957A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657946812;
	h=To:Subject:From:Message-Id:Date;
	bh=ScCMaHvwSrXmLWKfj0glBlTC2RLeoz91fifW4jza65o=;
	b=kmYWb8Rk8C5pmvUpZ0wSgaImFjWIt4VrBLaoBLmVTq9n9AjPPFYIDULRz+Ju2Pwn
	BCWjyVbwpbcPUVka0XrHMrTmjLi0dD79AttiAU3y44Lm/IhhGjjEdedTlX2HxchH/dc
	i0sE2yVCCTslNcg5O3/Du+o3f/Jbe1scABdyu2Nk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657946812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ScCMaHvwSrXmLWKfj0glBlTC2RLeoz91fifW4jza65o=;
	b=XSDaH2dcASnCzzzn93pZUs0Jqr7ceraNjwvfSNYi5AGiKH9SN5zsfp/UNx1m/Pib
	5bri4F/ZopNmKSuw3K7tbV1rz/8Ccn2o1FLM70PqgcsaLPT0LoUMf+pL88vmJ+jLut0
	8IRcng1IerreZSji1XxMd9diWOoEtO+rDiCooNxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820554af97-6d7fcdd9-5b58-4b0f-8a49-95027b4e46f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15be8102ee761736fcb42145ce470bc4b908e5ff38ed6ca2dbdf5b4901c593ae
Date: Sat, 16 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657946812
