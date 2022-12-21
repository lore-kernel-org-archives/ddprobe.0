Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFDB1C26
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA77C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671592887;
	bh=QEYSyBTmbSdVEmWfWQ+PLQd2n1UmMhD96Af6c7wmvJg=;
	h=To:Subject:From:Date:From;
	b=Jtf06j2vm+yPvNKkJFph0atxnQoZsq2XprwkunoCbNxFEAVyxL8kX83rBAO9OUdmj
	 BzmV3tLRTtyqrma3CC9rSZF/g3WmbmX7gaEp+1zaqle1dXS9ghbtdOJewAxto4TUEb
	 aetgWPBGQdQMFIfVx/XRhK5QVF2N4EikY2eVr8ytxzwFnTwgff5zLlCQfugMScuDPL
	 iudgkR+TuoY4jWsVnScz8TPj1GJR8vBzo//wudizrZs66q8pTFezDI2nRqQxMBlUq9
	 9UNsno7xtPNR7iC1txB+ckxWRHTM1PxsAMPcanDETrv9MSEAoD+S2dZWKmR7G6+kQm
	 laCDGrOOZRLrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DCCC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167159288739.7893.13887438842501503298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc568b803f6d756c196ecc99186e97255eaec30c0997977703f7a8ec0fc03d34
Date: Wed, 21 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671592887
