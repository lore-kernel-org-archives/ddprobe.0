Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7761B1FA9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 03:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A0CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 03:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687146008;
	bh=cgOn4+pwccQVTZdpGPGF+lspvcIWHz+jLp4DyuDm3XQ=;
	h=To:Subject:From:Date:From;
	b=D8uW3yBRZEiIWVYwLkImhyhdRB80P7Ae65eoUMzuqZaIaMcrvEJYQVJlZuCXyypiR
	 4D/fttAQLb0LNggQnZ/gUfHn9cfUsjS07B2beHE93pRJqaBv82KCTf+AOyQDRHv9Vt
	 fioeshKKrSoxCd/t/b1zCb3wDmpSw7kBMmkh5lst2eIBpg3RkXkBJHwQhi2g3C/tWg
	 nOnVHoCr4KqPomhtqCDWxDSwUBd7onOpT208hw8zieScYKBazfU3PXH+zOXYMq/Yd2
	 Y3lDIbw22KQhXPL/RhEXpR1+ai5alVZLcnIyT8X2t44qoeyGdGjUv+5nS92SrUftMP
	 hBD+6IlICh5lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B585BEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 03:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168714600871.6683.1008813402800542605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05050262b6721a829222b94072bf88560cdc8b44702f46747bc991c5d338b420
Date: Mon, 19 Jun 2023 03:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687146008
