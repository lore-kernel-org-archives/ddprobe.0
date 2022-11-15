Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2771FC1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74419C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668486054;
	bh=6vtQglBUSBH3lioacUiFgoDgxnCt51/C0kgmhasJynA=;
	h=To:Subject:From:Date:From;
	b=Ez9jg4ANRnsppBPeI5IYodRpqnKFO31zOb8RlNfCumUI1LG3L74cJEfj/S5cL06Xr
	 7QGbMm8rYAfioac5G/fE1NYob2xIy20n1hcYNjHHGjKROvSiF1UUm4EhdzIFGSxcNZ
	 Sjr8IQ1zoCGGM4Ftfjge2H9rbNPTyGWaHAjXHS9CJXqliMyhjWc9J1OIQWNo5yfFLU
	 j2hnj9UEVCQKixyL4NhT7w5oEmOZ/SadeTmPv9s9+JxhEtYanZ4nmgkPPGf0pZwSCy
	 pZ7oeG6cLB+PBI0p4ZJdEe5OPJXg8HonA+G4x5uz6cRHgbmUoTO38QdXypZlyKMMSP
	 hCu8Ce3EuLT5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5503FC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166848605434.9279.4075866951963490893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c576433a06d27e79d17ba881cbbc70b267e6c09af907972a9715b18a769181
Date: Tue, 15 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668486054
