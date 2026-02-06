Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E82D30F803
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770419634; cv=none; b=Z1EHY8Gxl6Yv4dgUp7NKuNDsmT6a1nvgjy8y/fWaEWADCdduJVAs+zvCN45fhNvfL+sPWnvqqwjpV8GUGBJoC4/gSPqy0qk6s1ZLeCk2OQHFyG0yV77+sz3mkbFpYDkbcdfkx7jd1o2L1m0AfASXvGw5Vn2LbCnbv2Fy3BM5g7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770419634; c=relaxed/simple;
	bh=+r4XlkKjlTpL1z3MIqIdHSj3fy/b691hbNWs9yo1xqg=;
	h=To:Subject:From:Message-Id:Date; b=GY3v6CTT0pvQssl0qHwAJmgUg3XtdbroSWPb57ayHptM5YK2wn9zslwAuM0QQ1eZqTCL7vz+7qyN0wB/S5lmjXEwXuWQpeEtgNFffRECra7DSGw2G42bnyPzL9JuwMLjoBoYoNJLkey6O4E5bhfiAwZ1YIFGnua2L2k2YJXqV4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSVCjciG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSVCjciG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6C2C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770419633;
	bh=+r4XlkKjlTpL1z3MIqIdHSj3fy/b691hbNWs9yo1xqg=;
	h=To:Subject:From:Date:From;
	b=fSVCjciGo5mk/QJ7B/BNifgPBc+WSfOdgXDq6Tl/OLot4M2OGRVoDRKi9DUHGme5K
	 ZH0nxXV4O/99QPbZZ/E4Ij+EpHlg419F0Vk0dXzl94WGMQhpp2/k7g+gebF1L3S0mw
	 vkupfv+xnupngdOb0UTGefE9tZcWy6Rmot+heT+qEVuGhH/AJZE+QDK3IqpWogjIGs
	 SnBc+NjLvt5tWsLnHRYj2fjFeZG1ypuCz6Bb52H+V2kJkslTDsjoZznwyuYTeqLZqq
	 tAC0rMd9dFw06oXb1ROF7z6l5FfKBIKw5a+8zj9LoM+kfPPcS75dq2M9tuz0YLFkn2
	 70AnDb0zls8oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9663DEE6B6A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041963359.13673.4674471117076598320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb718c3492a4f2181c4e462b342f0122c026949076894058fe0a9152b3089843
Date: Fri, 06 Feb 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770419633
