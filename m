Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45101257B
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0215C433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685780285;
	bh=ERl860W8kc2UcfpzYvUCbpjIQdyeQZypyS9IHv8aF7Q=;
	h=To:Subject:From:Date:From;
	b=iB1RNgu1KVYNUgsBr2IsGWuMbQm7Ucwwf+a67pEAreiSKhmUfcvciyc7ADaJJed+4
	 js+Ycnqvolq60e8A6VkeMTw+3LebmgM03F/sC99WYmHQecp+gX8YFfxyRCVb1ssVGZ
	 DFmT4ibJYNCu6R49m8o+h/jVBe6y1fUGS6hoO1DrsXxkS499hvNkTrQ9W6L3DmNqKZ
	 Mk2cLEdwNdpbRhV9rUu5Dw6l33DI3ZyGQU9mXhN+vo4q0qn3XdcXsJ08IoZe9O6iz0
	 3N/VraEIPayAr8Bihc0Ebf/HhS4N9Ah/pElF+QdE0EkwLB9jmAk4Ju0NtXV0jA2uRj
	 Tt15XPlWseB1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5004C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168578028573.5633.3384228600374160845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fcf36a9f98998ac8aa67f46d6677ea2a0c9e08dbf26a261ea1f1eb332da4058
Date: Sat, 03 Jun 2023 08:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685780285
