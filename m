Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03DB6AA6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732B9C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669575054;
	bh=mmTXr9dYuzc2e9xElxte7wCfW0hcBmBnPSRwp7PP1vM=;
	h=To:Subject:From:Date:From;
	b=JbDErl2vJaElU2hwLg7MLSVZQY/EUYERXqce3tbT4QzMcgV/EkD6brQ0WiotClhBa
	 rQnJkg8TxnVya0f7oyr6h+2ihnjaeouETdW5XM+pw8ko1LMPN5pFABwgLg7XOePHCz
	 oKaCx1AzGickYRmzNHd4S//hNGL1aXf7nzzxgJtU9RfCsZMJnTdYhBdmxn24E/FH0x
	 r8i8kQB7w2o4dkYmw3+VC8oEtazwH348YCLGPBoKCDZ6wWYuZOuvJfxZWBo36Bf/cW
	 UJtzYsaG31zjv3Gfdy35QHj1vNQdoRjhJktgx6ST8/XnRoTu3neKpkO0OsMkXECG4n
	 opMFQ72k6ipJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583E8C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957505433.27443.7768768561364176532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4479c5c4a0f00bda1c5fe7bffd594a4106fe6b8438b78893bb3494a6c316c709
Date: Sun, 27 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669575054
