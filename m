Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AD2C129
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heVmbRNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 850AEC433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700042896;
	bh=C9Sg3v39Hl6fVbGh8tdBjqgCHhA5fTKjnXtpUa0mF58=;
	h=To:Subject:From:Date:From;
	b=heVmbRNmgAOAnCr37Vd/TI/Dy1Jv4w743Kt0Hvnz1Nb3LB2PBYO6s7gsZOHtwntnz
	 GuTru+lpZhQKM1xC9ejAjtp2QRGH9JErxLxvSELc0UWTnxBdhnBawlCb0YShj8CSLC
	 wksQvCDFe4b0a7iKKfYBhN7sHxxDitZ0pTn0idvG4/p6iGMRxE3u9M6pHgxey9XI7z
	 5V+lL2MoEbTG5IhF3s5juC6aTQizimQ+jld2ncxz4dMvEu7ZaJ5XwzFPK28OTRPsZq
	 efl1ybXB4IvdRRvqcIrH1pRC0mqdtE5+HcZEmyaE1/iIOs3p7iiR8pVoZBXfYUbsBT
	 E/sSQFKTX3u2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F49C47072
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170004289640.26962.5780113523881800874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0820059645d31278db2664fc6352d6d8fc832f67dfd857e178275f37c1127247
Date: Wed, 15 Nov 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700042896
