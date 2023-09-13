Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59338803
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 03:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0CAC433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 03:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694574848;
	bh=d+sFJnQeKKT4YJ/1+MVXi5SFAsFOabOJha3Slul5/lw=;
	h=To:Subject:From:Date:From;
	b=hbmLPu5I8qcWBswm/77NFl49tBIoBaEygN67fKnpV3cGZfmzGjlEjpQR+B9u6IjhW
	 ltcvJ5Qm/zYOC0b7OKnGMKgJaFMDxn4WGSVE+EAlq1LryAFYHATt5Q2IlrVoR7BjzY
	 L4U5tpBCxL30TB4dzWHamXO6GbUxGhkYHVpfP2iFPjKeCUf3pVCy9JIKw3Sp72Atou
	 fXU2rPjkvDN72c9JunTWNxPS5sIHjFiRlgtTai+AmxPzccwy7rmutleNEaxvqRBP9p
	 D2e1m4PA/0Ecibe6LGD3bc6kYztfxwUU05MzIPmE/XxmNJg4Ev4eD/EbBLlCyKpfm6
	 bsSdud9NNuNOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9E3EEB58C
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 03:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169457484870.3084.11674209769709947771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ad645491be2ddf6ffbbbad217883c250ef01cc2ddfb37c7794b34074beef95
Date: Wed, 13 Sep 2023 03:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694574848
