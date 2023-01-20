Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EC6198
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84070C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674181887;
	bh=kenBEiwgALrxJEZ/YXuJ6h7hqbFW/qLcxQ/UfdsDPPk=;
	h=To:Subject:From:Date:From;
	b=cSWV6+0l2+ZetLdE7UFaCgQfc5tie3HTsqpdbvPcdpAaJlTUCW6L0DByk6G432/Zj
	 ohGO2B62Ld+AmRFMpPGF57ys3TmIzG8yb0rDhe4Imkkqo9MJNg1Xuv0oHPohDLN9xB
	 vuyEXIcaStKapHTd3xN9+pQy4TIRCVIm0LTZtlpxWFK1OPgy9sj+qsdaFXhC/KWj9P
	 lRGemsT1V4no2DUexPhxg0xxZxW6tYbI4+5JhV0+a5i7BzpdSanimYINJ/EO/i5ciB
	 pdErgR/P8o4ramJ4h9Cf+bFGFWMkG/mftOrorEbIjWODLQ8/8XGNS5ZOT/pNYSCoeA
	 kF99U3GdgEp/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64131C38142
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418188738.30486.2583179457425048307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567a9949e00a8c76d1bf55aa5548ee3f64bbe5475205d6519c6d238f38d0a8f0
Date: Fri, 20 Jan 2023 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674181887
