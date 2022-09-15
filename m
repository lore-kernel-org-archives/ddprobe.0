Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6884C91
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EC3C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663278053;
	bh=qIzmMm+Nrn+6BK/KojcL0kf6X9/E8KYTC5XzEziBY9Q=;
	h=To:Subject:From:Date:From;
	b=hBZncwhWNU4Hb+x+uH+4jbPeE5tTUtBJ0vbt4OuAiLgeSmnBs6EtxUyB88r6H5czS
	 RJJ3sbTTy6Q42ogA8gaN/uQNE38Q4B3KQYCaCxHdtEUIp3AApEiUg4pWPOtoWhqMy2
	 Vvr2b4VhUbnjkvIlnlVT5F9DJgTmziZWDDh0RJJYCaufBL7XyxT1qwgX2TGF/JXFJp
	 749ugOT2RDwJpus9mM7xvzEdbNRESn5210yMDBAs5UWmOHqRj8XH8HTAvWGcX4UUBI
	 SfO0cvilSxovPizrWUSeXaFDR8id33s+aN5dVUURC79OG+zjXihvoZcVDL9Zgoc4uc
	 3IsBsJQ/jGrCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54703ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327805332.19035.15388599041041273636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3982a80122c3d0d1f26019d62bad5864125a068d7939a7a47c5410e8673a5e48
Date: Thu, 15 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663278053
