Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703853D68
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 00:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6994C4339B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 00:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686009725;
	bh=+3jZvypuQ23KSofRbQCCiOMnSwQnbjdT6S0N0joMErw=;
	h=To:Subject:From:Date:From;
	b=lmv1hIxDK0lB9FuAlrrTNa6F46ZfJfCvR9jO811CTRkqKzeG2OcqPohC9smm0QD6z
	 eEDCCKfEvJiutxELa1PXBMk8iIXLPYV7aVe+uvr9ZFGDt4Y8S3sMnG46Qdi5EhvoHT
	 F26OQEZkMcg0QO8iSCGCWVQKdatAYyuDt3HcNFpnjvXZ/NjlSXRBSK4nvRrV1Fej3X
	 T+8ZLCwUSJf7ZhBc4Lrmfb3Nr8bTBWhnukhTfAMrrr6FxkGK3vffx+yRQH6CdRFneT
	 pUpgUZI9NkpmMHPy/bg6z6yFnkgDPTuCWARxShTKOgEh98c90ztVhulPGWikWxwyBh
	 Ffvnn4JHaPSBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88BDC7EE23
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 00:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168600972574.30044.1423769854513338916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3fbf61ca371142e32f902aac48a6dae2135965bc943e36ba1b049381c02a837
Date: Tue, 06 Jun 2023 00:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686009725
