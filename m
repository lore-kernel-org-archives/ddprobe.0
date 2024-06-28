Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A241CB33D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719599663; cv=none; b=NCclQUyZ8LDc8C7ul9xn4epegIf6OMnpqRW5ThG6iRacylz4Wc0B2Xmm2GpPIyM5HNQov/FjzvmLuPAg0C8K8Q+W1JvTNdSoTVZMWRgxjD77Blu5O6jgA0NRO/a0PANQvGxBKpAdOuARjUVcoJWGHpSHRa+XVDnutGsyz4Pu/Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719599663; c=relaxed/simple;
	bh=ZhRDIn5CSgt/7epTlxVHrq++1G3+yyS+dRaKYXAX6zg=;
	h=To:Subject:From:Message-Id:Date; b=ssEL/mGXhjYBuQBXDQjPOkq2Cv4G2AxGbXrx13M87y/YPVCjPH2i1NNbPyj/9mOWkpAHfgcUV1S2NhZvlIuV2TDdsl/tH0z7aMLZx0y2SnOLJ1SP6s0QLWVcHBmu4vHu6ZQ03usqB2XhHDh+vJQDaBbaovvP3pAh7evByn8Q4q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2a6po8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2a6po8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E65C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719599662;
	bh=ZhRDIn5CSgt/7epTlxVHrq++1G3+yyS+dRaKYXAX6zg=;
	h=To:Subject:From:Date:From;
	b=O2a6po8RDUUwosuOohb/rWgXH2OnyDW0iobqe559pGtYBHWXaq26QZywWZetHqLCP
	 K6PyGlUC4bYq8rwPmHjnU51lJsYpYb7TtzGtlr0cfx3+QdsDWr3/af96fL6k2TTunY
	 9EKjYrnKPEEAnbkr+WbKVE7h3OQJWm8VGcTSo+KK0xdypMLZbCLXwOKJmlTlug1vU5
	 rlZGlQ1Jvf8dUIQFC5SvJ444Pg8aIM1KWhiG56rHKUxwyi5qp9UMqzluHbBVA66MIm
	 N36q24K1pRxzsLKoJJryRy9f8cXHRi9Vihqqs3B18N3o1eENs9/aq8GcBqztDT79HN
	 NOP650hBFuBTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95CFC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959966281.14290.921561715275983331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b420b6a1b4c16f2fd8b0792128b2a3aacd65b22c1498f5858cecfe33064a29c
Date: Fri, 28 Jun 2024 18:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719599662
