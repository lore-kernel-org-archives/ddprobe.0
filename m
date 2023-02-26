Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448ED386
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CE6C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677381905;
	bh=7klPhYaNSTl6oNAA7F4MLwK1HHwfNM8QEpJGYyyooiU=;
	h=To:Subject:From:Date:From;
	b=klP5leDDBLypRelHXmOuv4Y9C9vqagWOKiugQ43m7sgaFY6Z4LuhXnaFQ53tab7VV
	 71XNhP6UpM/8m4S/T7f1w1yvyCYuXaScVMoBPNVFiN1Q7/aNfsuITB97JsxC4kHA0O
	 da0CfOeXZXM3Fw5q88wmRoQav5Ac7kDO69TrHJzIP8DcaSn83L1y9agEwV0U4QLLUI
	 X3a6Qmtv0y1ORJgzb7eKZWzUzUUYx4vUqyfaBv1B1NNv0Imubhy03jdJzUNOps70F9
	 3Z0PrfVnURTrCQOgp1UrpN5yZzjPeyQ4zCdq42KDCO/uuziRABDnaNL1RYLpR5jqmR
	 HapJsnYq/luCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC76AC6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167738190574.11525.9370835380828229489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4909efb887e9970071de55fcce351bac172686195317b6c2452f906996b4a8e5
Date: Sun, 26 Feb 2023 03:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677381905
