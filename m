Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B2038F47
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 10:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdFk9zsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51DAC433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696760228;
	bh=QNEs9hq6lnKtRpgLUuRKnL8GwC6iZ3WgIRX9FAus4JU=;
	h=To:Subject:From:Date:From;
	b=PdFk9zspKEzi34nWhzReJdxuqMxmrZpHKAFJ+UOFeSmsMmEtRFDpLBfycX4nDh8wx
	 VZ6CB2Tn/4hWMBBRH3SHTPFEM1TKIU5/mLqAwyNMC1UU6TZ7dxGhBu03V5QopctJvc
	 EMeHbyHzLObqfSlRAq6lr6U5OB+/kqfn/7voe/gZXWUPNUV2ff4U1xDAwvs2dVewPx
	 2mlY45qjKANAXiEWaQMt+ORzkAuh5igv7S+CYH/CJ97COq9u4isD3ZmjMjeqgA8w/h
	 kDqeQkGG1RerPXuB5mXue+1KicV51IB1RuytpFV10Z4VKDLQ3W8BUbV2mor8h1dS7s
	 V6kpWhkFveiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B89E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 10:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169676022873.4055.967325801676573022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3482f87bb65e689108c5203ec627b0b74748bed82ac2bcde10d951df54299606
Date: Sun, 08 Oct 2023 10:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696760228
