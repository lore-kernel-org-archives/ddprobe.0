Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9C123C4F2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774326894; cv=none; b=SsN6oTY+8ILOyyCDoHc7PE9rwXdslAO0AQmAnvdJ3PCPDxMmcdgxPGTsYOSQgY8KBC0IMCwxOGXR4oZkKjokhX5bFe/RSfq+4nAnBlDf2nJN6trRVkH0le/5YN6ONOQd1Q/ujnZ3Rtc7hPkV4mdLf7t2wiOienHSWjuLv/jbUAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774326894; c=relaxed/simple;
	bh=hf+fhKGjlztR3npnrcndF7Zl9Hd/x9beLtKZTKBBQfg=;
	h=To:Subject:From:Message-Id:Date; b=DWX7l9I/oGDTmFun+FqonDxh9lVCVPR4pIVslmUxHBH+h2tYpebTUSZ1FqrjkcAKn3WAPoJogm1c6p0kL4zftIllNyLUDlR0jMGM9UYoKKkZheU08q2iWsG3lxIgh8+Q2Z3TgHqzkFlW8P2WzukhQ1ohzJuYhIk8a0IPCHx8uMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lt7usqQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lt7usqQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A313AC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774326893;
	bh=hf+fhKGjlztR3npnrcndF7Zl9Hd/x9beLtKZTKBBQfg=;
	h=To:Subject:From:Date:From;
	b=Lt7usqQ7ncXv2xbw7P+PzxESTbg/grxuSskVipju4COnhlc7hpWu8ZXcJiuqyoSxq
	 gvstQHzD6gOuTV3B2zg0sYmKBYmghD//aiBt9kEMdGgmtEzwmn1QPfEDUVUlQN+9lf
	 6xQ5P5E6mYeee0wg5mn4sQNzejhILFUROUO9gSsjduVon+DRwqBbbMRVkBAnK4Y1gC
	 KJzCbPygDt0jtJncmPIsXiEMCNfZLaly4G1F8NO+BFkis8oGooBufgNHw9UKwGz+Hl
	 oo6L5EJI9GlrZ4h2gxon11kL5BaDu+4u8Zh5WdcSP+62oVSJoSI4TPs2MfYXWn9+09
	 D8/jtw5Wj3yOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925EAF532CE
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432689359.23919.5211250015150924696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c7b55249cd9251feaa13e8285275e93da9025350950ba8f893cf209db2f848
Date: Tue, 24 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774326893
