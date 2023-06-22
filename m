Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D65D1C05
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01FEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687414988;
	bh=afm0Zkfr4a4FW26s/CzFmtHfCvSvTppADcbsDL5BWrc=;
	h=To:Subject:From:Date:From;
	b=CDnR64dktu8U2uTMH1JVLJoBCRFZqocZGkPJEH4/PpQ3mvUQxOPx9NO982XkfDMOb
	 xpag7k6Y4/BPZBGMt+GEAUvDP0N+2/LJW9UxbhVgs0vbQ2ALLM7OuAosu3E357DWM1
	 fevA3mfaaAz4lyV9OPjIq+u2zpPKwyxXHSatGKvNddtrMoFR3iV3MFCvLeNQIKlaIk
	 CC0NRWVNty8SkAL2foZHMI/IKOd89kUyR1cpXxfQ1K5hyW4MFFu3ZhMCTAjnJlqO81
	 5xU6GTkg1oWnIuvLtN+C4YXjf2IlC7JwVL9JWT8osIkDp+/wscywp+YEKHY3XwTdWx
	 /BWmNJAUeA34g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F02EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168741498866.7521.10977486477244129524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdffff09a24e4fdb2adfd64f3d0cb1b4f2e1ef19e7e6999026dfb5e811b6ded
Date: Thu, 22 Jun 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687414988
