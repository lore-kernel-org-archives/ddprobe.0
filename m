Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B546AB5
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AECC433B5
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666396253;
	bh=rQYSh1oOfqbmSggOWnhNcHBLN4KQwa+3/SkcsK0OSfg=;
	h=To:Subject:From:Date:From;
	b=d9yvqpGWRVCR/5cvQOObgI1XICW+mwvlNF+s9WyT5jZFDyEKvS4g0YldPEdTh/Neu
	 +SfST8KYYR8MlqWEQO/j1fJE+kkyy8uybOKZiZSKnk3XQLSkjRqVFOQSYjYKWmMvFO
	 ZxsmdiUdQpyLLs90XG+cLzn+uDycbA20YUx+N7Nfal3PZdCovV3iXymcXGOiKXsxQd
	 9vnaAqirKGVCiTlqmCTjYb7B4PV0U5Jt9hRXluVYnq51HsCRDAcdoJOipbkx+i6wgr
	 BFJDCwzz1/IVECGrTQwOr9gN2eydR2db/MxNs1WYVACp40iu92MmyeA75RuERcMrd4
	 of8jd95HcSyAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508FDC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639625332.4778.14799828078027441095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8772c1feadcb6a88d50765957f337671d4883a49d759c040495817bfd4eeea3d
Date: Fri, 21 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666396253
