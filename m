Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675BB347D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 15:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8M8IZ8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B29C433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 15:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697644692;
	bh=k0aKb3Klss34ycNzQ9iN9W0AA1GpIHCQI9+qBPv1sFQ=;
	h=To:Subject:From:Date:From;
	b=e8M8IZ8irQFxJxxoc6nf2VQwwKQE68kTBbd0R2P2Ye8OjiT/rcErarFFutadt/WqE
	 tCogVolPLQz4D0hUGcuLTIGwcRTm9yvVCsQcnL9nkalR/L98NYhgjbUD5QFfQkQqnY
	 0kEi4FrtOOIw93g7qekxwZT2/0U6L96ZhkTw+P4CpVNKEXFtvGai73qdYMjcMJaJN5
	 7ERBLx1d5ng7JRPAqWv5i9U8wAm6pmdtwDrpCTumWH/RsTv4sPd9djI0Nqap2NkroU
	 9U9ItzG6UlxGTz0vR6zUL5kxGiOj+O5i9NgG4PdY08krPxMwOvkCu2fRrD97WM2nio
	 A7fmLCHBiutUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9719CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 15:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169764469281.5327.17625156262455858093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7a3efe023aa22206e157bdba69cedb8edfdeeb8f2f9accc8c78058c7903264
Date: Wed, 18 Oct 2023 15:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697644692
