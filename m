Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2B2EA2
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD24C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664359253;
	bh=80Z86nFXREnYgFEMVFYXPx5ZWm1iXrT3Lg5RVGxuEks=;
	h=To:Subject:From:Date:From;
	b=ptax0txgG7AcViNIcQcLfIwH66evYvWz5SguspCqZFX8f0m0xmg193bzuEUl5dha6
	 oNSJQkty/cKwjxrm+rN7GmLBbVAv3yiQ05isAavzEGjuy88vyQ697xRRrSp7OPfzsE
	 ebNhZ+qj/tYabhKlMdXFXmwS0+wB4tH2RpRnWlKnIN6LjgSVY8qudgk1+eZp1Ayruj
	 E81nAklxSPXcaiW490eEaEcmpsB4FBODHgd/te1SEZiTag2Tzq7+qOBbYXLA1XtZEm
	 mkVYdG8kiKGbXlr4ctF+okCL5onrhQg7RGdKDWCTumIrMiFcp/IhYlEMz3Xgv+adEs
	 m0VPW3ukdguxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D33C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166435925332.26360.9208601462139711249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537b8a319dfe3707a899ac351b392cd15eacb232babb95bdfb208cd7f11bada1
Date: Wed, 28 Sep 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664359253
