Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3267736D51E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764457974; cv=none; b=rJRupnG8xrG2tAixUGGoUt7ZxJMvbAGFiM8K2IJ8o4scbaHSmEIlCTqUwm9qyQwREXJY8uA8692cHPOGk7LcdC6GjpeXGsWiLBOgGeIKrboE04B3zjCOYFKICaYK8K/WlYCMzXQ87HIvRTyCUVY5qXje7EN/i1awlz601mOJox0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764457974; c=relaxed/simple;
	bh=WOurG1+bKhzNf3nBe3lZ3urt0bAjnzgGLkCt9t0P3P0=;
	h=To:Subject:From:Message-Id:Date; b=Ea9UZ59jGLQlF4m91HEoeXXU8JWwpFocQbahOHnBITSdxJvbBZn8q92PX5Ji2cBjs2oVJLJDaTteDwY6N+oZBuZfgmL2C9QxVfoi2AaL8HtYD9Ef8YDT+QRu1VYVSJVI3P4XJA/e2E+wKeUlwq1G1leXEPb1WOajl757ISMZZ/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMYoeA7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMYoeA7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF261C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764457973;
	bh=WOurG1+bKhzNf3nBe3lZ3urt0bAjnzgGLkCt9t0P3P0=;
	h=To:Subject:From:Date:From;
	b=rMYoeA7AT5kWn/JE2O12FbcSKVt4PeYryDVevjN0F/rSn7ao/rA0Wk/K+u6VinVvu
	 XN1j1AGwa67trvGdXz4N6abcLSMsLKXxwaMUbcmuhTQfFZa8kAeM53drgKDU8WZHBO
	 UiGmWMyr4BTeemZAFck4LtIVk+rLV5mKS5zeWFcO2izRc4OEv9k2PhrtaWrAsOnIDJ
	 Uda1vsp7qOUF3laj+Ig4vU6JuTOk2eOWa3Z2KvOxPdLwxwbpzEtZ5L0ilqeibb5PsI
	 ysMRpTHOBHaeE12Te4iAB7NhQ5c3IehQgA7v2hZKr7/L2g6tcLQJ+n7/B1k+5yXXxM
	 UCVztJ7AqauqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC47CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445797360.32482.7596778304112343098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c0d80403480267c523d90e788483332355259a4c4c1349d4ca5437d1f54470
Date: Sat, 29 Nov 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764457973
