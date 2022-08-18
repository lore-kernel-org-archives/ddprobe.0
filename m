Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF5315AE
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660783252;
	h=To:Subject:From:Message-Id:Date;
	bh=8PMAMRZhcj96WHT2WNw8v1xG+Yo2BpZczyUdLmM040k=;
	b=Jn2b4fAai2nQIfTqlmdRKhWovtLl2/LECRv1ajcymZoHlrliV5e6X/Mna0zGxiYn
	WTIPGQffeEnk0HnOIYAvaOVeysf+VwljEAfr50wKEZVuhtC2RIWulexiZrjYCNupYvp
	VxvAfeD2CihnAQMo7FQUK9izNENIOWyaWf6WjbaA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660783252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8PMAMRZhcj96WHT2WNw8v1xG+Yo2BpZczyUdLmM040k=;
	b=gh/CfT6GTQwv+nq9neUFuo4q6bUhsy5X0iHB2gRA7mFV861gc6NxgKmyuxSFWmcJ
	TApsT4P//+j/fW3RITdwgSYSSb8VI9rvcnIqdp+K2hkVaZbSVdGFI5ldHmufcPaoT0Q
	wXJfxGDZIbBeaILMl3/SIJvJlxlolyV/tJCxylSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ae65544a-20ef7e12-0bfa-46a9-ac0b-eddc5c49f73d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4b2397f566630e63270e964d52ecc0f6c93c60649d358ccaa51db243f15fd43
Date: Thu, 18 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660783252
