Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AD933F3
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7563BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669639854;
	bh=vo+bghNy/koj3r1V6GmY7dOGR3brZ9ZUNtrkJzi/3Nw=;
	h=To:Subject:From:Date:From;
	b=jsSC96OZRs1bnBDfM3Q0n8xtQYAuIJIsbY3lb4KZh3PZcy1F6Rw0nle0oVrmYsJnt
	 bX2iCaTCwXTdDNs63TaQ0ejgxg+LzCgxrr9mJkwf3pkotMMhDdiigruCzU5bptbrd7
	 pMa9f6yXXxUqvgMnsbvwT5i3CTWXIS6W7YsgCz8s6jDNp+X5C0NCKqOYVqtfnNSTdv
	 hIBRjhHDCD3q6d8SKKj/hW46DCVy1D2p4O1ez0v0cxKUJO//XQiMC3FIYmGLb+sfVm
	 vjY5AkI4oh5T2D3w3ep20Z8Iut4Emca2dHbRsuOPG4gEANDz9qGPu3v0DJHy99R24u
	 80Q/bhf+00NYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AADC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166963985434.6381.17119343910378281280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde11d84e5f4f04bc92c033fa136b036a1777a1de250de56eb36e6af9c22b364
Date: Mon, 28 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669639854
