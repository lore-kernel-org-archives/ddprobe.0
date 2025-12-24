Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227D82989BF
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766544234; cv=none; b=nxVwLlw/P+HPCHv/dZLLgktc0SUmOS2NmoB0qwLQsfR0GaBlvUtUnsGtMbN9yoMwqnzMwlpe7ynOq/AnmzthCltHmPDWB6s2a+mxz7N/4NUW+7fbkL4GQquvV0gB994j3ANC7Xui2Irrp8eZA39A8XvgwJqssX5NZoAC4fxZaQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766544234; c=relaxed/simple;
	bh=0Zp6v4+IiL0nmwrNO4BKiJyTl+MyNEzSPQZl29cdPj0=;
	h=To:Subject:From:Message-Id:Date; b=LdRAO46rnuGWxlwSNHuxAz1PdcHdRwd6gL/q5td1E9AAZ829/WmypOgrG6W+m55VXMsfMVxm1AxQSgkMZYnVWigxvdgKYXtH3mN7pNIryfAemNR+9wzYKjQYMb+i24QQQxlA0HtgOH5GZaOokSA0JJ8qiKx02F/Neat7/lqvTSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYKKA0NZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYKKA0NZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECBAC113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766544233;
	bh=0Zp6v4+IiL0nmwrNO4BKiJyTl+MyNEzSPQZl29cdPj0=;
	h=To:Subject:From:Date:From;
	b=rYKKA0NZR6DL6PknckIiMv3PLypmPwUJ/itRBSFD/G7w26zJUHfgD524sjIte/WV0
	 wy2TR3E1hB13uT6SdCKNr/vdIdPAS/EMLH/WNoBY2WpwU2IC+yF/PI5VrXN+HsRMkt
	 ITTjW4mlZ5BIbC2j1mqN1EIM2tQK/6wtvNjzPxmq4KD1D4wGoINwLBewEJkdp+2Icm
	 igvUITOebpFmV5Iaa9IHMxi1CRNGjQo+7YyBMGpC+eVuKTbUWrekc/ATxxNHAKmwMO
	 98KAoXq5xl4v6DyB5WSpMCfbqNcNVCf2RauYQoH3lUDnzh35uRrD+gCbu1ppTwDFVF
	 SsiiVcmfyuhWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA0E6B279
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654423357.31352.4888404130080811464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9becc04024f8b2ea2e75ad8dd671fa2c60243b4ad802b59ae1f67259772392b
Date: Wed, 24 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766544233
