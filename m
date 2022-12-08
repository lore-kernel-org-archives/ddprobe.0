Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9D833D3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B957C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670511654;
	bh=aODtzMuffBOX+fW/JGKtxQHFc8p78MJOBgkcg1QQOBQ=;
	h=To:Subject:From:Date:From;
	b=mos8Z03HhfBGiM7P1nOF/I93XNuNE9nDZXjisc3l8cAl7MXQOcQwLesAGLbZ4voWw
	 Lgxo9lYPgtgCN4YC76nnYch5PCYQne7P2z5lP13E9aYC5A9bt9vdy1BMWVgnzj6wWK
	 EZjQGvjpnTTsL1vnE+BE2aNQilaCsrzZDUa/tfvvNnaCcxjUP96/ihLYVMNbJCdZA1
	 jo7L3yzKmZpVrshPNQQ4MIi+VyD3gaoh7ip4iPv8+BPuveRsH+hDt/iixfaj2pek/d
	 acAD4EzYsJ2bjinBjcuivIS6gr3VJxCYTtV0HsJnIkwHb5GxOGTpN+wAjMHgcTI4h2
	 bgxU2FiDtnecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523FBC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051165432.23633.14201253662739686720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0b7b193c4f1e2df04e554693024c0c5ff8b3f16eb75c56b8a6c047c6be3d59
Date: Thu, 08 Dec 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670511654
