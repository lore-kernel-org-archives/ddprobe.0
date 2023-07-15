Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D4815CD
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 12:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDED0C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 12:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689425468;
	bh=2R/n1HsKug+HKH7hhcgKbj22AeVrKmv8mBZ/l+7un48=;
	h=To:Subject:From:Date:From;
	b=iX/LdXpHLAMxerjlxbQ5kFEVzhPJD2MVmbOa3g2vr6vv9Zv555xVSXozYuwD1BfXt
	 rh2y9rfZ2ohVOaurvwJx3cpbwLRf+Ujk/zCPMnA4bmAkJ/B9oMtATcpI956q6ckEGS
	 /+wLxXLlpP8h2KIMPUNQoO/0hL8UI2m3vX3Y9a6LyucA35NDZaal7Wf671PxWwOkFQ
	 V6zkzgx5c9UcgjdobYZTw6aQlBj6CXIri1L9t19NajiFAtQRnD2CkvETAgzCuJaZ8r
	 jkssO7wNGTXDBMQ9RESUc3cgWsdKWHpMtaISTYx9F3aNbAXaDzlmgIwEfYQiD2K+Xj
	 PR93vtZnlJmgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD0AEB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 12:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168942546869.1437.16659830157272238621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50b40b2d5839e39fafeaf6405ffe1e54c86b8b8ffd3d032087c748d703b0b42
Date: Sat, 15 Jul 2023 12:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689425468
