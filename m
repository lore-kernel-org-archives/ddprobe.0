Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EEF2750F7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747657794; cv=none; b=j0m2Tx9KaBym3ePaGngvsgQpmLuRdbEXtVeeE6OTT9Ee/erY0JbZT+Jm0d+lST2JmLBnwd6K1oCxt56H8+v9YBF1Q4yymH4WdOcBga0ICHZdlb2T3iblXtvpJqBqKKHIj2HC/wGw9sZ7fdHdWp2v/IeJc5S5Z6eQq2mXS4tuKyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747657794; c=relaxed/simple;
	bh=XMyRdvxy/NxcPXLHaxyt9I+vwNpR2Z9WKurIGyXLKrw=;
	h=To:Subject:From:Message-Id:Date; b=OTtLOhFRZ+nWqbsDEpdclgEStNML7oA6MKALhrlFQZZvX7eL91PSkqhF1kLX8gm40q9sCFnjOqtvecA0vTdDc6rlvX5hmm3BKZcKEcuzAQFP0VuHd9A4xMnTEvkej+QQwgwZ72RedvLJxlUxt5wiDDKt/xzdA1icT/J6aFC1W90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTdYGRk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTdYGRk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BDDC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747657793;
	bh=XMyRdvxy/NxcPXLHaxyt9I+vwNpR2Z9WKurIGyXLKrw=;
	h=To:Subject:From:Date:From;
	b=rTdYGRk1nQiwdnuCuOy09p5fkNZVH0lAVulnpJFEwt4dba3wahvh+qr0+/XPv52NY
	 oT9zrg19lFHL+ntEeeVIJTGlfhuO/6iq3F1mH9vl2+e34lObE3N/cfgAZMUl12xD/j
	 xWSgXD86zGRZIE8tAI5zagD0fHoBMs6pgkhGrolfkDbmHChVo+8u2aPZ46GjUjM7fF
	 E2Yd41cyj21Pl12h+P61te67RvF2lPqA+WU0xbvRiqSgBiZYsU/3+Pm7mQrlq+UhH9
	 fQ9TLPYDN+bTk9Jpbq/c59Mib301DU1k4G219gAE39W5uGK/QRlMRiEgbgVOTrBFkD
	 1s19p3BzG8WDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3F4C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765779357.19609.469029820344908567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d120549bddb88bef59aa1effcbf4a7186326f25b041932ecffcb53fe26a52f
Date: Mon, 19 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747657793
