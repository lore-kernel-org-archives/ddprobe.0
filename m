Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DED38FAD
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNhyi+f5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8672EC433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699574296;
	bh=xF/z0hnPi+fPF6TElPAt8jQAsDxzJJDSBePd85jcfBs=;
	h=To:Subject:From:Date:From;
	b=gNhyi+f5XgKo7rkzeRuaBIuygixw74KcXidmubqd2ek0kha8n1mqAyInT7hWFWvMF
	 Y8CO5LxTFcodYWTGoDcFiQvVP0VDiR+uEF3doJRBNIEtU/nm1K33cnm+qAZU45mfDZ
	 o/NC5jtZMkJKEN1DBuDSDw65I2Cv3vVWyKlbGWCskk8b5JPXlCqo9HC+KNNUp1jCyw
	 5uSYdJ5uj1l25ISpwcpXE0zI6xkpS9kqalM6tyqMMOYL5jTmKp/OKX7mTpcWqw6fWy
	 xqDwAZSU0gkcKDhXNznBdc+Zk+vfAkk7Q+weHopkbX/2cCdpnAVWt7kSo+BOUucoxg
	 l9SyBjL2B8o7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BEC0C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169957429642.4551.12555086130407590440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8fff249764daa8d4db7abbc26ee439f3ae1ef840be8f145808a8d00274f2f5
Date: Thu, 09 Nov 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699574296
