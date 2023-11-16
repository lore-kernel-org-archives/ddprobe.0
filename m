Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137ED13FEA
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+xJmsu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E51BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700175496;
	bh=snp7Eg7gPGJPE73PO2xQwYy8kMtQcp6xDBprE2SgOYA=;
	h=To:Subject:From:Date:From;
	b=l+xJmsu5kks4nECN6TMLAD7FO6rG0nvbRICBUwFxogUmJXR8VuoscxnHXKfLmeKYi
	 +LVoqe6LB9Z+Nk6IFQHkbkcbE7tkIiWegy8ihzBfDXRQ6/I/eFCATUK5mxMKj0Lcws
	 bgKqWK6KFHB5V8PHs30KppQhe9jmRaozEkimvTAp33pTFv4IPRF3YB0c+qfY9nIITW
	 bqzvC4isqdxcfOgX6M9BwaEHMFByC4D53nKDbSy+gYXWjpfbMOI4Nb4f09SOBFEU/8
	 q5aRAtgXr5aJxxeSnmul2XsylNnSw56MfCxY1BYTyA8T9Ps3yfZ0hQV6r09pvNc9EX
	 2bT0cm9JStXbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E452C54E76
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170017549643.17055.14732250329182011670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ecec42de38ea24593dff5991bfbcd9e7da9e20894c222e93894c20d429e0f9
Date: Thu, 16 Nov 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700175496
