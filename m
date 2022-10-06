Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DDE4A00
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7483DC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665086453;
	bh=wGVdME4HpfUeM6LceektRGFnUpi8eXD+mQ6p9YLF97A=;
	h=To:Subject:From:Date:From;
	b=u3oJNb2wV6NeEbp55t+dMgy4w7wmLbDAp50XvNsLlxS2cWQ/nvOAinF1vKzzw1w6k
	 03cRAlb2quJPEodbcKNwaxqPJC9vaVBuvOxyrtZi6v3LIQ3V0dvc3Ed0j3TgBk+wik
	 8/8IoAjLdi6XcR1+pxBbAvH0sX9oMdMSm37bfa8oQ+R6YacPMB22p62ViQp8isd9Ne
	 OmdO99mSLCm9J2INM8dPnmHwkhRR02bqYrZQBHbKngrwWTU+7+RrqA1Op3Fz6qF7aN
	 5hVYn+JdbzxwaBeGTFoIxRfY2ZavBWVCu9QAZs+/qK9xpY0OhIu2GzP2VC+fRYmrof
	 Wgc/gkdmwRMxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E2AC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508645335.1896.10841435864122201333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220166634ba9da4d0016df0ef25c287d78afe315df098c1be2d10c0c659c99be
Date: Thu, 06 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665086453
