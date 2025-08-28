Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3066B326D74
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756401594; cv=none; b=X+lWoalG5JiSjMDll2jgXjDpYyqVyOkckFMIQH6LvMqc4g3WiGoQNKAzeRBEGTccSG6cwe+SD1XuY1mWz02aaSGgma0w8ei5gnpClEzKhoxswK5H0SLoKZpoHPDt6SqMEoL61fTbU4xcuW65s67ybG3COBSwbDj94GDW4dVUas4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756401594; c=relaxed/simple;
	bh=luYiz+pdiG5vudYDWjqkriF7LmiQV2hAETlmOcpeX0w=;
	h=To:Subject:From:Message-Id:Date; b=Xauv4YJhVaMphCNu8UCZgSfqJVqiZJg3Bu/Z7zyRg8hILRr9xwEYXN0fY2srfXlakNsHZ8FCIyNh4G3sjJVDuCUhX23h6hNBByuHkC0xkCc2TMIktSznS+nSHYfsw5qwYCrfmrXASTN0kGwkbMCBC7m4G2Pff1iDkEGXdxYqKtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWHjGLqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWHjGLqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7486C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756401593;
	bh=luYiz+pdiG5vudYDWjqkriF7LmiQV2hAETlmOcpeX0w=;
	h=To:Subject:From:Date:From;
	b=XWHjGLqM3nZEkEQBxSBm4MJE6EqhMoY/caGuw/pbGDOsBq/9g+rvVHm2l4gCiATYw
	 e4NnR8iIHwDc9nBzPnR5/Oo0TK+yUZTKLN7AaRRPsC1vAQMpEaiLYhUesJJeEBUiHB
	 JParjlJQWxCuXOmGs9wxWb3xzz6B+fDSQJKhM/LAOjpkBidgYBfUYxZSw5JL6ZUgxw
	 Jhk7MqL247KjQvuLa4t2D7M6pneKuci3f3DdoK4a9Q8/X61/eGxjm0SGmGlNFAt6+V
	 n6YMV1gOIk56y5U5IanCJyIIp2X3NZTXpoYG3vmhwAz/8sWsLguVG5Uv5Uz4sd8fF0
	 nStzqDj3r1SSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948BFC8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640159360.5899.9333128065894476059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4113698e7c2893a6eb572a0ec0b473b2ec225d56c558650712398923ae5aebc1
Date: Thu, 28 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756401593
