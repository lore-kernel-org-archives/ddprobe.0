Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F9528FA
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 15:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651418278;
	h=To:Subject:From:Message-Id:Date;
	bh=kUpzyjddk5/HsTlZOYLpxFLbn5X/Ca61FGHZ3GpvUqA=;
	b=EUpvNN9FUcVH0UaAHjKjPieFJ6Ux1CzZAK04HdsWwRFc+zLbmnTcItCJteqraVaU
	JdPKRLMQw60+Ix/UFDN+LLfNYGZpkpFOaxEvbfNEczHPVKbVuv3BSdzcR70GNfvL3G6
	+46uoWk+w6BpNqfGKaYHyO5TpEhELpFVsPrN7EZ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651418278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kUpzyjddk5/HsTlZOYLpxFLbn5X/Ca61FGHZ3GpvUqA=;
	b=CjbVP+Z1xxfcO+EFEYRId41dpMLnk0hRQyXeHA7X1T+cdwIBxGR9c0LDimim2IEY
	/Q+XPW87Nk51KDsOPcFxCBblcA/f9U+oa6wL53kvHvbfGxgCtJBJ2IVWPvfxaae+3+c
	U46Yr2PffsOPNP1sWROd6V/lYcMpmfmfXehTK/YI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018080332970-46d140eb-612a-4f97-865a-26a2db7d7697-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5687c93c2a48fdfd320d8cbd8126032f66bc39839e6caa1665dc437eec617de5
Date: Sun, 1 May 2022 15:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651418278
