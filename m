Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482DD2F2E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 18:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3C28C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682362326;
	bh=w4td1o3Ljnv4D1gYv7mCma2Tr5ATRQhSfroLJNUkso4=;
	h=To:Subject:From:Date:From;
	b=jTvDSP4SYNxoKwaRLB7PlnW1Et4SIuOPaciUPHo6R9GxwCG8gdUh8c3aD4JzHCSot
	 N3M+ZYwASAuisHpLQ971/k7o7/2QdLROg/yp2C4FW+qeekpSztFPrTZJDfNM7YWQbL
	 za9yIrQUhyuh4uQmrGPk+cGezUZWMLgpeh8cHgiIUWrhibEGyRQE0rj/MiOI5ac544
	 j6UphGgcljC2dmT+ex1XAHxTTBBjy570vQeojcjOZVcUEZZpLgKu9evCJ5U0fGu0rQ
	 2OY3GWWfIAwvGUSSMKWDEP9/k06uw15CZiGu2RI1I9Nx8cdaGEtg72EICZM0LqNo8R
	 kK34BvWal2ZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D69A3C77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 18:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168236232586.19240.12955747966196953762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d2238878695db09c572a6916c7aaac0cde1273fe040e05aef6ee429c1d0da8
Date: Mon, 24 Apr 2023 18:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682362325
