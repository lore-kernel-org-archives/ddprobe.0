Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DC8184C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 14:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E27AAC433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 14:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687096808;
	bh=LkZkhk1EnVrydTOgBA8octsqd8IFcV8xRFNTLw7hETo=;
	h=To:Subject:From:Date:From;
	b=ICYgJdXrFTNNu2+FB1X4iqVox0xeE6cUu9xxVpa5fnzG4++RTm6JdMaWcu/Xkm5Xy
	 PCH4BWmA0x9i62XeIcu7dKG9uvwsnZ2OmJ9MvD7WdrgZo2rnswogrdCTKMCVyeXbBj
	 dUtCbeUDWRHvQRcFz0NKg2gSmUEfYTQpoZCEJfg3XqvWuTDC5eHF/55CCpCZFr8B8D
	 XDXisusScoj2oWrukz7U52jiP//W2j8z+8ERtht1arpNLD5WXjuglWsy/z8YfrtYGH
	 rHGUOnlG107P9+Fu1z9FRiTMkrzg4xcjoorPgS1Hxat9Zoq/e47/bp1vOIM3k9tjXD
	 re1CciY/Zjr8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FF4EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 14:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168709680876.5794.11479080796764243241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0913f7848d7fecaeed0dee8b6640e7d9c49d3003d6e6abfeaeb548b7126d8c12
Date: Sun, 18 Jun 2023 14:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687096808
