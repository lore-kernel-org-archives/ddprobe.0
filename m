Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D2D363
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69ED5C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669768854;
	bh=ps+AyNVZY48C/YpWHiW/1dQwmSMBMu9PQSNffctrByA=;
	h=To:Subject:From:Date:From;
	b=YtejRwtffY68pPgdFd84myeVmX1jcnlyw8O761FEkCMQYS6rPQEry80/wGwJ7HhC8
	 MRL41NH6UzdJ8pqrE1TDoNFbSQoISzxp8uEPCHU3G9TTz8lj1ze3HgQ7uLQO0u45Tg
	 Sx/+3jrWiDaqhrMjW3wLiNGHWlh0EMzM4MO0l9cmCgImvh544ZGAAUijwwOun285JR
	 Gydf+pbK+mFT8gOFZRY1u721ymGGVw6YqO1dE5b7ls3PNQm2xdQTDKfAVseUNQ9NX5
	 mVIAIYAHGCNUCFnqoHVDnIS3zu4S/9TFO8pgCUv9GjGPDPd/cNnBY5tX6s5cSfOQB3
	 XiFsJvkF4Y7Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 518D3C4167B
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976885432.13796.13483995531856776134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ae76851b44829a6cb2bee08284c96b546e570447bafa622a1ac0dee662e65a
Date: Wed, 30 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669768854
