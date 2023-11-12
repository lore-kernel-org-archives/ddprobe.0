Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB351BDD6
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNYkvg+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822E9C433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699832296;
	bh=4K/ftXXQEJF/bDte/r9RHVk7n9MOuYBlQgRYebi3L9E=;
	h=To:Subject:From:Date:From;
	b=qNYkvg+pVIjOUM594bY2VHl/oz18xNeZqih1Cli0ppoFAAWjcHDR2Q2PpCfe25ihP
	 uA97U2xYZr/eevt6Cs/asGoOQ+X3RVGPUMKEaX65dUZARC2WFkIRXK/fpew287C+oM
	 YwBxf4Tgx30Hz5EtGauzCIB6d2n+OyG3Y6+sbvZzDUHLsv/acH2pm6Yc0W8SyUt0h4
	 1Uw30CmZLNsA44soFO4LyX1O/bjGvISQzJy9WPTZc2Ulqggl8fcBDgBHscYI0oM2vd
	 hjz0nm6d7jSGp9FURp8reohkSFjjg15yYxnX6GkJ+nZ+0H4xLcLsNhcAWEs8e4zk57
	 Z6HzJOJIcUEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62010C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169983229639.9145.16461772297838930579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1411e7eb3de6a5310117355d8d9acaba12a4d65e323e0eadf373fe7333e8bb12
Date: Sun, 12 Nov 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699832296
