Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E1E1FC9
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B83C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666149053;
	bh=pNbIbzKbtCLDEjt2f8UgxU7IDTNK/UNd6SkiOHLEc60=;
	h=To:Subject:From:Date:From;
	b=I74SrEia0xpYoi3Soz/BHtIjQE48BiR0/0d7LEG+y0TTQGtrwQmcZjP+/PQRCtJo8
	 KRCPkpsil54a36la/kh4OTrFdB17hydLyBSM6fQXLiuG4JRdqZHnxGB4fuzoSkUf8m
	 pnWRh2Mj19KSUA7+szsSkK9M7KhUH2e4UH/a5x0csAzPXOncporWvKnTEJb2YLiv95
	 6wSOtCG8A0V5lVIwDixR17M6TsES6onHzZrCKn3S06ntczxqYK5XhDFQXyb1r9eH8G
	 DkM1EAUnMGJDCXfn7sGd82ykc+yD0LAt0Hs1NcJ1gURjA5qrqCK9WS4KDkCzwGDZf2
	 lFdTRo1h3Uqqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 507ABC4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166614905332.23652.10362061017840380585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d146ff3676d0c8f33b9c3fa144e348772fb41feff9e6c58e284a34b6a973723e
Date: Wed, 19 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666149053
