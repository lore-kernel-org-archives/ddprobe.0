Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D55399
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81372C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672302687;
	bh=uzE8dz8sGdVInjBfo62wwY44Vu6r1bd48KUJVjfkg4Y=;
	h=To:Subject:From:Date:From;
	b=Dfef+jPqAY6r6NxKJXjpSBeqJeAd3zx148FOpxH1x2NwZN1dgzGPZOfZf8ujPyIeA
	 QSjGC8DqYUgKda5vYq7aiDLzIgyLntRJ4Uet0yrs4ummMVPfcajgG5jH25xYzyzDXl
	 h1XTJFiU548/5hhWc1HcXaLMIGX5mJM89nhQ4ztHwx0JWvMFUSCtAzyw0MbPWUThOp
	 7bl3xBT6oL26UxAkYwflDipxBpHT6hJaN3ov5MuIBZL9l89+QYtf7RjWE0YUEiVZYr
	 vG7zGOzBKtqd/7pnco+Zo2xGlhjt7Y90b8wvPsfRai3DW6g67GNgTmL1UimKCtfJET
	 QKKDDEZVxTpuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AE7C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167230268740.14646.3119913025210018063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73019d54890a538cc07848addb7eebcbc278a028fb19cad914a4686ec5f521a5
Date: Thu, 29 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672302687
