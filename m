Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BDC538E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73591C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665253253;
	bh=q3jXzNJ7oBwZF5NfBoM3mvNoddz79KlAyeBfVnDj1/0=;
	h=To:Subject:From:Date:From;
	b=QKqipDpfR8ZsIT5GFkW607BOVSh1eTvCH38WAtaFoe1zXiIOCtD4CYKiGW4VPcGGI
	 3/kP+WH/prYRcwbNWL06NWsQvA85U2Pp7dCdYZv8m39h0BSJEovEtAmP5iWdKm4vxo
	 FT/SaAM2QncN7Ki25yLSw0l76ZVVUPbq+12FxMNi4FZCgPGn8iOlKanj60BAx6QOxz
	 NMyFBPy5kvR1A+mUq7DNVhSB3tw/twwuNaRmmjIJdV3cVlweyJm2U+OpKIspEOAvXz
	 OzWsESR0CmOCxEfx2EYOj3jxWRfJJRLNuvfMlMk8e/L4Qb5Rst7Tf8Ktea8fYvopcp
	 79KSOgVx5Yxvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB02C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525325334.3105.267458549956185002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8444bb40e0ef5a9c7f188c38d12126d8d2c5f1a9f8e8d10bef5b196c011d487
Date: Sat, 08 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665253253
