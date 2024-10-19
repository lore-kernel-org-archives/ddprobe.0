Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2748312B17C
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729326354; cv=none; b=kodlq3dApLx5D4F2Re3wwDBokV/y5BIG0rCV+z/2q2gDvFMUa8+paDCwpkceDnJIw/pO6aaQVmCvzH0r8S4n/sBIqCOGpalwlPJXA6OC5PFQKS2Vhpbcku5Te22+pArAvb/TTkCcTusQRIOI7IORYuTUcSGgBOWRFhoAkSaoiR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729326354; c=relaxed/simple;
	bh=Qrsh6pkdEXrp3AtNpEO5fytT/fEPcE1GKFNeyBt5Iyc=;
	h=To:Subject:From:Message-Id:Date; b=o2DkGVy1CZbfZ6u8A2/u3nxgQOAQltSc27XLfiph7XEfEh+JGJmYpetUBDGRBILfs6VHTBZSTUOrshyTzPjLlimfA0B6a+ay5PPU3ifov7pPrBwIARo0n8Uki/KhhUdqTn4WENUK8C6Kzndsd+R0wQs/jnUxdcFkK/GzwKQSWyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABfsF2OY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABfsF2OY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FF4C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729326353;
	bh=Qrsh6pkdEXrp3AtNpEO5fytT/fEPcE1GKFNeyBt5Iyc=;
	h=To:Subject:From:Date:From;
	b=ABfsF2OY1U0tEIRrskGUzzxDr7wUI6vMx6MGhSQaRCibCkWKU/3/bkqSUKkbmEiDT
	 bptWyPtFPNr/NqG7P2qRpR0OUz/XpEHF3iPcbsUPmXUfUOOwINU4329ER4CTxkErWj
	 M5gs23hlEHa/ZebtBNaRu9yBO+w1owVGQKnTq8KJmflOuGgxgHEg2M1z9ojpT1WxIT
	 MGmPsUeAoe2+UGSAgk6lCCyM+M0zz6+SdN/twde9+N0k0ZF3bgoc4slqbhSWkQWLLn
	 23d0uYqCWmi19bdNBNv2CuygLrbeUUpG9z+av8mdyaEQ64fj+8NBBzeWc/VVtOvWhs
	 jfYD+W7eb7Hhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD85D3E1BC
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172932635360.6014.17443906513767774064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d930cab052796315f7f6a46d68887f45ffd73fd94007dd8a71be67dc2e6a13
Date: Sat, 19 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729326353
