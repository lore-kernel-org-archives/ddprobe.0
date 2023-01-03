Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81D77E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 907A0C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672719687;
	bh=SsJWd4BMTGBR7Om+dslnWaRUXsgDmUjJWMGFTmSO61w=;
	h=To:Subject:From:Date:From;
	b=Lk8qZgXsuxHFWa/ROvZoVG2hLAhox0sSfCBrOYWukq/Dwt1fbwMmeLFLBXAIt+NNn
	 I+hhha/GuDurpv08Acs6+HsY1Uj41NTViT253pscWCErYa/iQetES17QHXE/oljDdH
	 plK3+JkgX+AmhUtSUm91roRoBbk57/3zc3sroz6DoPxJ3otNebc5AG/fXGqEnTrR4N
	 RcDNne54l5eLiAihayH1aa73S+qu65V4TT7Fkyb+lfc2UCOVjuvD31+U+Plu1saO3q
	 FvTHHyiBXRPmW/oYf9fMF1NFh0us6JpSPxlTXSG9tEQ/FhCvMnGwRWDIl7BfdVIcHz
	 kgFpjRv8PNnmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F225C53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271968744.7390.12490104837409443625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c03956cd04d9c90f3ac6d08d619e74a74d7d7a6030fc1883b31145a9cdb5321
Date: Tue, 03 Jan 2023 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672719687
