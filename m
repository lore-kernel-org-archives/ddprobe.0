Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4266E1C39
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:40:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3633C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687106408;
	bh=L+8lht4gGDkTKUkN1Q1G4OrXmPsJka+ShNuy7anF4XE=;
	h=To:Subject:From:Date:From;
	b=AeFRyJF8gdRJ5gdFCkasXpTMTam9QAOQYAUhdQ+RTBs56U4X9jJBgpvn2pn0kAovN
	 xqN/R2dE7SxpGid48V0NGHSWXZgmEePvPP6t0+ccVSn3wGv6vvYGhQsqilYQn2cv+I
	 gRhGsjTkn1Rd47yS8sYQxmQISf+JIX8rUYvdl2Heb5OnTXaDcTOX8xmKWvxArbbmZx
	 g29ovTYH6hN8BJGASTFOn5qk55jLkJMZaWQ/9MOtMXP9n4dyMol4lIoVSMR9eQ5wiR
	 8/+gHleSBdNnCONJGzP6PpIlUfyySZimSplVestf7mhe/58uK/BYfJtPoEEsdWDWrT
	 0UMXbGCFGelEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70CCEB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168710640867.5315.7684250755359873885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7f9dac07dd3ee6e24ee9d1584c2609fbd08b309af601853c50a4ed889e7bc6
Date: Sun, 18 Jun 2023 16:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687106408
