Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4462D33CC
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 09:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC0DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 09:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681377425;
	bh=GiCWK4emLqQMYKscfdbrQ16H6bZPsf+pG7aKWmq4TjE=;
	h=To:Subject:From:Date:From;
	b=KoaCKMpBw7cZte2JZgTtUDhVdsofsAj1Nvq5bLez1SJ6Q8M64pvka1AF/z6/JE5Qn
	 4lrM0bCWwYEsD4zI2XpNafS+j/MKxpZlIsKeh20Ll7ZfLfn1CyiQuH3Fx0Ulq+Kj4C
	 gn3CUZv55PgD3tnywbkMD8TNs8R+BDuWnAg7pVpiLQ0wiWpJf33oSj/QCGBRYnY7n0
	 uQtqGP5FtQ8ae/wKnTON9v2iembCkPlY1ZrCFXTvI+EqjacWQ7D1HngfDIoEUb5VoQ
	 pFPrwQndy12K+TtPQ/nGzEuRd77Yrc3koSbkAStBtUX7ecbuwPp1n/NZv1gQ86Zd1s
	 /jhcRVRsuzWpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB06C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 09:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168137742575.32746.14311157408164736876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2253e47f4638ec38790d5461f7d374a4c3759cdf797e715bebcf0b91e794100
Date: Thu, 13 Apr 2023 09:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681377425
