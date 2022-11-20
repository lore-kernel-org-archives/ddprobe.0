Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BD8EBEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE0AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668984654;
	bh=XJROUbVRncFV0iA2rgzWD99tdO+qnNFGN6hH05X5XYg=;
	h=To:Subject:From:Date:From;
	b=Mk034Nwp+KAvO4Hvtejcy2vveQfUAaaBobzUweH/n4vmNO6/W0iWZkPjANAhikngY
	 9VmgGMlsZ3V1LaoCVNd1WqUBYmcdWzR69ra33fVYNV9NVHpc1VtkJ/y4df0MqNprgy
	 VYnOk5v0IuMpOFlawtyWG25+sR8D+I74/yGTHEjcWC3a2V/8Ub5K6ffnn2iouOVebC
	 rBPGDYDac2Lu+nv1Ls5ON7n+NaGkyL2whvIBrUXZ+JqGQ0spcaJPgdaxBJoebdh3Fr
	 UgX8sCtb2JVrEGt1w0pUciXyPHej4HAHKffbB9D0lo3JYVG4njK2NpNuMOqBFjml3O
	 SQ9uv14Pwr6Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C47C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898465433.32228.9177818832414253247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743994307a25a6b95a093b7e73f15a310d86dcc442dc0adce6aa3fcaf7d899b4
Date: Sun, 20 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668984654
