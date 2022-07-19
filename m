Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E085393
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658258212;
	h=To:Subject:From:Message-Id:Date;
	bh=DXVQX38tZnv4venSqQVGinRe8vC3+XErr7UMscvZlCQ=;
	b=MzHsKkm6dO0Gm2Ms0BgcvrY9OTIv3NXqTxkU92ebeg5XqpAHI7ybFF1m6O14q27F
	xtdBgYiR4Xh+YXXNHeyrrsUsnfGbTnqdU4YUDel5WH737QCedlpHkoGUpADAKAxgyxw
	ayUT+f5x9jNkDxAr9MwBD4pvtb932Yxihv++Gsbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658258212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DXVQX38tZnv4venSqQVGinRe8vC3+XErr7UMscvZlCQ=;
	b=cm/9g8jILmen5rrJilUIiG+nX8Cz64yH2Y07pyqTCLle8c7m9Afw82CZ8uCgbP4m
	Ou3J/Se+/u/s80jVPjMEXLUYL3BRucWa0Abu32CsNSM38LzIyGgJzxhsqZlHNpilLVs
	LPNwgSYoNTymXS9iCwJArP3Evnf1unEcamIgEjrA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018217e445c6-7caa5506-240e-4141-a694-66e9a6aaec23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fb5969aa74f02e850db71ed5a5b9755cbbf9bd2b3855980f0225398b5df2620
Date: Tue, 19 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658258212
