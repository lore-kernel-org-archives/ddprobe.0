Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC94A41
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD33DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692939248;
	bh=m2CZJbzcbuoUxBGw4oOmFT1RgdPGF1VXNrpTuUNCuyY=;
	h=To:Subject:From:Date:From;
	b=bDGwa6TB+44C83Bu8fm1pSV0HsJ/Y6K96Q1NuYglRAROtmCNwScPQKl8u4fdy7yeM
	 yD/HDcuatHXBgBmS14s8O80sCXULjJ49/JlEsemSw0LS8ivcN0djIvrYKkV34k3RgC
	 /4PNA3N0xniA7l+CfPCMdpwRLLOBfLM3+RBadf3yye63Du8Hsh+k9yYT7+CK4C6x1U
	 UpDaX+NWkdLJnce4MJ2F5WirjrdfGJkjO+q+XySAlARmTd5dIB8J11y1itERutNzS5
	 AF4mTQTPDmLhhM5Ejs+U/6DIaIZNYradLz645bzNZbe+Z7Bmx5MvuvQPylaVjT9als
	 oDw3o9fQapW8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE95BC3DA66
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169293924870.27143.5919580169519711116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd404fdcde116b2ea8394ee81b65fe83d57b239f4b6264f3cd5f5d6c5cfc2285
Date: Fri, 25 Aug 2023 04:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692939248
