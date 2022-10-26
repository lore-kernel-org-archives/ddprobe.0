Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5447E4
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75263C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666762253;
	bh=X567lwv9URXWu2f5mvJlqZ+Fw62lIeRE3AEVGJjV83U=;
	h=To:Subject:From:Date:From;
	b=B1ld4o4Mvt/DF4uwtbtbgPwgZZfTQxbRWR9rooJdE1eRvYV97fsJ8lIigciFY3H94
	 z5+iEEQgNE7Ceyy1Ckf9ao3MnBjUpKm1aNK9mbzmtkLFA3G8sYM+ShQo+VKcg2HaVL
	 kkRxv4OybrBpfxopT+412m232TnzIPWY8EcSgkNQGCIpmU9CRW5xcOsH79tjiBT9jt
	 8yXuOYGvCUtwAAMOmwADO+udu4NbinZsyZwElk346bT47RCByuQ56+xB++03dkuhF7
	 Ye1ud9FtTUUXm5IFo3csrRkPnO2dSfnJPhF/4R6+ImD/LZlUW70n9rTwC83q+rv1M8
	 NKeo+cLf7rlbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5283FC38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166676225332.19778.6459945907091242471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e814657e73998e49845495403ef80bf07e147abeb8a3c4ce0869c0e8e0cb0b6
Date: Wed, 26 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666762253
