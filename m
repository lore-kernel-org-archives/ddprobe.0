Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF48182AD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 13:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F9EC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 13:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687873388;
	bh=mNaLlnomw8sDWAcJH26V27f6l9n/a/HzbS5mJWVMC64=;
	h=To:Subject:From:Date:From;
	b=DqEUmOfEtCkz0mpHem/eO/n9v6H1ankM23YF5g5RhD0dKVlTFPy+O7P0XTchyJt7O
	 848/aq9xTfgQtBmbVFeZoRK1BDfoUnULCgfYJ1zs5+Os04xDu8M30AQWrhixPaC/S8
	 CcDqWRex9+3g9yy9p0CgcqBrb3zXqdy2SKVsHSacwTD1M5J7gRtzLT7sdkYIWb41Ec
	 I9ok/qJPpBvFREoyTRktMqd96PsjcG33Y/DBqunug5lvg6SAlIS6yG9oYiBlY8WDmf
	 QiqU7wiqG9cna0ro8WtD/3cxT7ErzviWfvhhgS7thBr3m+3ejZYu87IpnZP9xMgzGK
	 5qnlKiMQzY+kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3CDEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 13:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787338870.4743.8040387838609730560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3521daa33f419b4d8dcdef84b27fd84d2286b9328cb223cc3486b61368b7c369
Date: Tue, 27 Jun 2023 13:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687873388
