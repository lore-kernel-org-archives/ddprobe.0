Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B5E30AD10
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234893; cv=none; b=BM/Y/lgIMjGsb8gIMVZ6+t/EBnZRSv1iiXllPxkrxa3nVC9pfQp9z8aq2oI01oMlGaUNUyzCVhoyRu1N9kngQIo0QDuuC2Ljv54JWUGd3rjdVyWT6oOYmxcxZZreyN7V8e7W3lfBg6u4hhxDxsQDBCzsTgRgfDsbHNmA/yv1Zc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234893; c=relaxed/simple;
	bh=SggNf0CqHyfOeBZxcT1JJqRGuNW7rAqQzmYBrcH3HNo=;
	h=To:Subject:From:Message-Id:Date; b=rFx0VdNFPX4LENwb9w9284LeBrbNzCsKZZe9IPpocAk99ksqQ7mektzIe1QiGswh5p1v42816rM+rSqbb3NpNHLRMnyUnvYzqaCVEeRpySSgUrFrTneCh8SNIjk/oFJSORZdGEwMipuwPxOnGxSxYmWn+5Ej2e2s/p/ThKgdIxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLae5L8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLae5L8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2584C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773234893;
	bh=SggNf0CqHyfOeBZxcT1JJqRGuNW7rAqQzmYBrcH3HNo=;
	h=To:Subject:From:Date:From;
	b=RLae5L8XMmUr47DnE4o6pyIn6UnGAoNXgE8/ZFPNMdVHOFrzjhsOZDMJ63omcDf+t
	 0sKKGb0ZM0a4dKRVAMKu7R6Xw6aX+1LJtnhf2h5RrIN4AnZWloC7gMeSB3itHYu0tk
	 34xlt9nY4pFZII2j7EzekeVUfNYZnppgu33Yvim6Xw4hzKb8VfBvmjHbRTPzt5aJDJ
	 BUdGMKQEyr2MKDEEoaGVMwBE6FqkCpa7e3I1t+xqQvAN0Fmkjic9ap1m7eBVuHT0zy
	 sI8w3BpkxtyGJPqy9sm1C1To5I77g8sVASDGcV7G4DXNMM7SItut4HPjOaovlKHdgE
	 nde6Bmn/xxk0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005C106289F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323489358.20700.5505589836751027032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d4bda77f55b26487d3620cbc32935924d0af476d5cdf8631dec81a3eabc1f3
Date: Wed, 11 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773234893
