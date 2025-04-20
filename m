Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E194A11
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745171394; cv=none; b=gFd51ORp75Kso5wyAdblH15V5BRUZe2HrPPqvc4TzlPTZEnG/SeOKDOIrDt0pFuyBamFPKFWNn9fstVPbJaj+/GfRPswHNPWnxNx/FYHtp+ykfm2bbpO7RBvqiiv0GAXaAbZF7pVP6g0reIVZvMd/b8coMUBNxpi10/+wV9vzzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745171394; c=relaxed/simple;
	bh=nNz9g7Q2UPc3OGSSDbS0n5o4pfeAVOiZa6ON9p8uiuQ=;
	h=To:Subject:From:Message-Id:Date; b=hgKap1Mu0WYLxJkKwOilDifX2s19SvjV78ugY+JB/i47+LyVrXTD2TRgueDmzWm4bR6ghL+juM8+y9mvMFiaEWZG/2IkApWJKI5axwrR0WOlOmuX0FLGcvHs8zkE7Ym1ADLchIeHQK0EHNuEqgrl/jfSarRr3/fqDDt4JNrXSrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFrOUq0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFrOUq0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31C8C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745171393;
	bh=nNz9g7Q2UPc3OGSSDbS0n5o4pfeAVOiZa6ON9p8uiuQ=;
	h=To:Subject:From:Date:From;
	b=WFrOUq0+j3Ek3lwFcDxPTxAPj/XeAO4P6Xg1OCYi/79UxRoYh37OOXUElk9aa6zjU
	 tO0kF9IxpDBtZ8i5O4hMJbuHc5uzdWuRHGPO4+apxhZOjVggrSC7lXSNmcR+pDLO6d
	 wbdkSxFiKNNzs50i21rDYsbq96ebMHEClYv+6aqrx0KKnIqUYXOvzGhl4bjgHJXq0R
	 dck+Z1a024UbvhiVsSvrF3d1vbBz5y4/rPp8psOVwf3F5eT/kRJjkxRSIOlX5s4IDs
	 E4ae7M8r342BZ5GSKhefe1inrXagCEafCs8NS/F+gvVKBTE88gxT9t/o1ShZEcaVJ0
	 sXQ2ywdNdMe7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF6C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517139358.21657.1093206840917668573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353a050c99d841304d1002fddb989b27492e383526f12cd11b24d17d771ea88f
Date: Sun, 20 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745171393
