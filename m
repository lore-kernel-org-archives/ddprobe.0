Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB2C435AAD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783357114; cv=none; b=DpzCGf40rBKoHkUDMqLR0m32sK6/kGOjPPBLhkZaZGsFEQOOFcXEWhN5/r9tzl9FN1scwUL/nvSavTIJpIgRAcM7VbnKnR2n2Ug3Lw0wr19Qk1XBCFFDZZR6Bv/pd9xghgBvDzP8S8a0H3ZFA/3OiE8J4Eb2N4oLbufBypHe9IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783357114; c=relaxed/simple;
	bh=U8IJ5xvOd41ue3c0eCtmlHYRGoC3gh/nffD8CxiD4NU=;
	h=To:Subject:From:Message-Id:Date; b=eiIaRVVoS/MNmF7B8zCc0fUBK2MY0Qs8F0hx4ZuZ6g2KouwPY1wkdWPlNkgYaAU1GxDfila3vETCzuQc1X7LTgXNT2nwvtbiM7R0GW7FItxvAO5JWvEoJdB71qr7EVkm4Ohn+qQruZlgUhAwEsOk7YzfG/Q0/8YP1LDlbHiM1iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUqu1nk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUqu1nk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB25CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783357113;
	bh=U8IJ5xvOd41ue3c0eCtmlHYRGoC3gh/nffD8CxiD4NU=;
	h=To:Subject:From:Date:From;
	b=SUqu1nk+KNbE6+B6c9fgRc1DjYg3OJKG0grPbx9Nh2CaY2R5IVunje4LNwzP4FBtt
	 iNM4TgQ0S0J3S4K9TMH3rR+t8EvWo+eKTPBlYGJuYz8fjBRJARAHp+DyjIrMh7sPtV
	 zZ16AgpIpAPLkus/RWDl9LyQc3b6s9eS+bWpV3pmXRAPRwUS6pa9Wt75GjLnDeFjFU
	 qoBr3HI0fQgdcXbu0obbrg2JVoPeZH4y16hZDD0UKk2jCgqXHV6f9XGQ09DZ08QHdU
	 U1kYG/IU93UBIC+HAzYEHCSl6co5koWafhf0TlAxEijggRX5gmlNL8TXLLkRpSHWQV
	 Ff2zQ0liq8H4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A926BC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335711368.27074.18290549124892538866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07cecb6d83a9af43bf93930fdb71c191320647dd11df7fffcef89754237dbce1
Date: Mon, 06 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783357113
