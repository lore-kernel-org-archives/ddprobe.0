Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F409454
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723929953; cv=none; b=VgsXpA7y/tdj5qEZ4e/xHaAED8p2MEQ2HL0mDa9bDR1qCMsHGCsQRNo5w/nftSZQFI5/Jq0OzbB8kjqkaTkr0GtM4+S31hTIUZpEk+b7LkPzPz8k7doJoPybfis9H2ruysZsG8iPTpKWmfyNz/XrgkOt08r66uhw/oDIDrocTnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723929953; c=relaxed/simple;
	bh=QUe2kWujg4VrK+w5u9763VV6nhBuMpWqJcacMcJkIrU=;
	h=To:Subject:From:Message-Id:Date; b=ktr9vnFb04qfreuoIkuOTcaQUff116p4ulEA2xQ9dsGjvBSb4FB6MwdKMXVRsmoXvJgrEJ8+O0Xf38evBFMEptuA0nryosiSSFBejSaHM8LX2T1oh4PIxmlU/rugZZuccp1EkqICUL2Cd7Q1pSH4YII3w00T+Y7Pw5qixHYl38o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2+6+hFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2+6+hFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DCDC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723929953;
	bh=QUe2kWujg4VrK+w5u9763VV6nhBuMpWqJcacMcJkIrU=;
	h=To:Subject:From:Date:From;
	b=T2+6+hFZFVvZKlRub2eCDSnywnED8fWmI+dKo3ePCmWXGGRBEasQZK0un6n+ffOiZ
	 +Cj6s2mTwAskRaRBXY9Lwe+XeIql1bdB14457lj32kECx9YbXtvtx6VB5pxfhgA/r5
	 hI2Y5voQra8bTN0dRH0tLxgAUhl5T4tWnU3UeIx7UcpK7sSMiPjOKeWoiZO/O7kKFy
	 0SeNSsecpAIrxlr+gAauvI6gdvveo8Erov+WNCbTcLZFP0g0wTXE2DlJuaSYk5jdpz
	 6fFxSfFLvzdM4BKxhY+iBN4+NJKN/A3uGXEPRUErwqmYe6dufFuJux/4EfxR7aBX4Y
	 ZweD1Gifa46BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93324C531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392995359.10053.7208170218445374649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7659cb3a713d449113141851141c23324b54c4653271a4699bd0773fc42a8199
Date: Sat, 17 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723929953
