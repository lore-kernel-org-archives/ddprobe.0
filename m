Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ACB3236
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656285412;
	h=To:Subject:From:Message-Id:Date;
	bh=/v4hTOq8APKsLwk094EgqV2SLcz8YLensxqimd5MJM8=;
	b=ksfDv2ISf2KwPk7fa8Mh1AvOxpGaPJSP94Saa905iQRnsBPXVOi3T6QbP3AkBGiw
	rvXQ9wYLVN6RZ+bm0frGhiUFxvitq39wrY6r20gAeq6v/PrbjSF0jwG0y36lxXMW+r1
	0YbkP00aI4Yc8ZCqI5KN8WfxFX1M08ImQ62rDscI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656285412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/v4hTOq8APKsLwk094EgqV2SLcz8YLensxqimd5MJM8=;
	b=T8egBcNaJQrql1OMQuxP5GVpFx9L3xItLHNDgf1rHUj6wGrqO9arW35vbX+EV5ns
	D+HLIOufnQUXHc4ZqsdNWDVMCV4ffcOwBKTtiMAV0uhFZZbTe+xEYLwOlimYIttnD+5
	mTcF2uvqH1LuQbScxzMOtTpwHO+2A0n8mY8IdpKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a24dbb9e-4188ff8c-33eb-4ebd-afdc-80e574f28c42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 192bad131012f2ff33c59149a518367604d959dbfb1b9c30c2a378a602e6310e
Date: Sun, 26 Jun 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656285412
