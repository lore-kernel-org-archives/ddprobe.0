Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D41399
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDB4C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665274853;
	bh=eWilB23ZJN2HGSw5zVclqrqoDFgUOOLWL8gOIUhiiyU=;
	h=To:Subject:From:Date:From;
	b=J4q9y7CdiYe47eq/NQ4Fr/xpjXeLOTnrogQLKQc5S0pb7u9kCexxyiIseoIXq9hUv
	 CaV6wFWdFc5EgHdF1gwwDPgMUjt5MOaICTcNRunVvtPxye44l2PtDhdewlT9mwPaJ0
	 BeZTDWt7+c8FnpFQouBDK09//VZeFVvV8a0p3TXLXOM3uOOhmw3aQKTySSE8FZ8DlK
	 Vw05g1/w107EpxF3cMH8eZyKvrL3E8yoSufwqPEvAwkTS0pvonEL3y5ux7lmFZQdPy
	 O4FU+Ms+PhjJXTGOygHpFZp3ipAcu7I/FH/v6T1r8gsZ5Yx1TFT5gBz5C8Cvkyx+K1
	 krHC1Kvr2iVPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A9BC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166527485332.10512.2203268626076705650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f911bc70566421b96c06f34299d3a9c7e96f0e50ee2d615588b6416082d8599
Date: Sun, 09 Oct 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665274853
