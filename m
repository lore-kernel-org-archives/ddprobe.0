Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D153C2D
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC49C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668516054;
	bh=uJJxIMuF2w2o+0gVPF2ZH+9X9Olq10UV5K+ypo9mLM8=;
	h=To:Subject:From:Date:From;
	b=ZolhaEM7Obcuk64XEm4IkYeIfvI4H+nAKOdsEtpk3HnBQauK/e3RQkGrwHgTDpa3U
	 hifyne2D3J2pvl72G6H1WxF2RYG1xuZBSkUkr1GX7Wy3UY5jCUH04VIDNuB7LVN5yq
	 tM8FYXSvzx8cFmTeME77gBHYvvToyMB2hUfIaOCK8WuBDtF/V+B+LLZoc5YEcbygBV
	 ngezi2saM2lt6+QuXey+lprPoNAChYeHpsU5vKJMMsr93KZRJ7IjLMtQERAej69y0S
	 4kz/+ZfruxRozbQE5tKwCwWTFIQCoz9vzt5LmG/ti2b2BX6CRrIEiCxV5JBllOSMn+
	 AOjIHH4SZcq2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E84C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166851605433.15290.3864462118295244541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc4aa668a9cb5262d51d8bcbfd5a68acf7a21c64d33ecc8ec89085081061cb7
Date: Tue, 15 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668516054
