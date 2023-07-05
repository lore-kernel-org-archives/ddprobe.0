Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE9DD2FC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F242DC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688565429;
	bh=c/bt8vULrOb0pP7EpcsIKo6nllbMA4IUCWpZmKcTuO8=;
	h=To:Subject:From:Date:From;
	b=Z5SgBLH6SezQ0fvM7aNTHy2n77t0BjNw2+vQf9L1qp1v0Qbd9rB51xdN24kqdip7T
	 1rEo7aNgiRhTM7ZLpjGjZ6W+HLKIzXBIMPDujMP4oZ+3wZ0cDfLC2MAkMvmt1D885Y
	 OTEQ0f00ISAL7IQ3YMYUW/2dqH/zFZ81IarckbAbmg8kszQbdAf59hrlvLwCyPTJPV
	 xRGUEMM9pOFs5hY57Tj3Qab2uMAlgQn55rlfQ57H+0UfaujKLrIJuX7bT42rMmmyEs
	 SB27WUH15T434hJtQTFG6LSOC3Dc/E56RM/3TDQzb2NgYs3V/lhuVMks0/h299GjMs
	 WiVkx3yhNGVLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDCFC0015E
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168856542883.10042.11598568852011310078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85aa96e911be2cd1bc0fd1d5c5790da4f61d5016f7cb467c1147cd8270a0c550
Date: Wed, 05 Jul 2023 13:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688565428
