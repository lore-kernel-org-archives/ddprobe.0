Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90C215CAC
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B5DC433D7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667915454;
	bh=9GRMxofVdZ1uy1e0Wk78OAWjg6Wrxrd6s6HRfx+clrg=;
	h=To:Subject:From:Date:From;
	b=colZrAHKwxnMW/N7qHAqLinvl/ewlqABey7r3a1A8Xt1D21BiYCM7ShsxWvktp4z0
	 Tsy3Bd3i9IFXFh6lwmKmIf4OnMX9LjY5Hd3+MpLtXr4r6Y2LpwXbTWCrlSaDNvtVRE
	 t0WLpEPsInFA+CWG56GPB7ka9Sd9GCpkLME2aHuFCSqASWSkct1z7kZVHMdECmUOTv
	 FpWfYBdV3tXOCtEku+9woKzd4YsFSKbn9FFTQKNesQLW1D6dFpia/ci4WY8hPIPUNE
	 T0fqFuC1eYykQU0G3tUZZjrUhQtCPHGQEw8qPmwxopXORXeRs4NP9XVjdmGRwrVVqt
	 e1JD5jTJ061lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538E5C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166791545433.26769.17684100008545440908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c518d58e6bbfb99c3ade00d8b86b31f44a57de3e24c79a2b77b05ad8cc10e22
Date: Tue, 08 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667915454
