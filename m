Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA688EC08
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D745C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668018054;
	bh=YRIhc4BS5OGJPNuQkmwhKP1YV5ltGEdiDiX1IWvRO+c=;
	h=To:Subject:From:Date:From;
	b=HX+j/BAghT0o1p1w3JHEad+KpUWXgTqI1bifAgkb7q5H2Ua+tZBp6Qu7mDtRoFNNE
	 kexZz34tVqpOZ1JW4d+zwpXhu7MMRFG74+AGUp5fsZddl2n/YhOeC8wxz601yB4FSu
	 Q8/dLfjOgMFJatQXwHUtE7aOC1tuoxtNZZRiPHr92Hvr+b5j6/12lN8GSmI4wNZe9C
	 tFyJ8ck5Hy00BCNjFzYVUNT+YOveIe23CyFVcSXE93/pVRzLdISNtWCOTef6dLppmu
	 +2vWiYrnzHUMXZ4YSr+yt4Cw996T1l0UobBzsSzhxln0CdoNRQqSMXH2L0UenupCks
	 7x4nmD0Abkitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572FBC4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166801805434.6036.2048056845145093056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17128104e99c14f9011e63137a7268cdcb1303b2808201dc60055e95d4b86c07
Date: Wed, 09 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668018054
