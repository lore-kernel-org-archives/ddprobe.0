Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF999441F
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74520C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666468853;
	bh=Z4oFY3WNE6QQg7VB5IksvLIxFapYgGTLMcuHntEGQ2E=;
	h=To:Subject:From:Date:From;
	b=KfXQe6HAD+6D7yT6Beyi0Y2pa0f39PmmTECmmfK4ZiAc2vd3E1Oeh7GQQO2Mxpgti
	 UrEJAfescmORQ1/3NZgKYrzLxaZb/CJd6xM/z+AsAAgp+Xyyl9/aPGTOJn9/QHWC3L
	 nYTo1CEIZk0O9rMBW5f+vpZaOorYL6XLNEqYxmQBDxpjXr62JmtTIPMReD/CjJIvKD
	 F6T+c2XoW4HPKQYbIemrzjGJ5nN4NrHBRc4V/w2WGTxuCZsuegSKEx6DxRvVJRRjaN
	 TZThWMUp/a/GhSmX/Knjynag4jxl/jNbHQfLFchG/xJ/ORFf5+k3V5VNCOSfRgpoq2
	 Kywf3XAtn+O3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 598ADC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166646885335.21119.12579060259836929372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ed6aa5cf5ad88933e13f99a048917a24a6d8bb13fae980c92064d84c7ac533
Date: Sat, 22 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666468853
