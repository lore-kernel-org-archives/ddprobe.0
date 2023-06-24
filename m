Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CCA378
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF267C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687567388;
	bh=dBIkm2eYm4f5dOwYcoY6x5u/PzaEOhLdEdhJDRokjkU=;
	h=To:Subject:From:Date:From;
	b=oJJuH2lmDSq8OvRyxi8RgwHzS3Hi9qM17mhQrXnjRMupQDLtFs5vPbWVy1LmlU/Nd
	 I7E5zxSM84SwnIAen2Ms/FpdI5wi79n+2HdYw90w5Jaq+0wXSqi2B3ex32HkSVjeeR
	 m6YCX585CAirhOfFpAbHE2al56WQN/6Dj/k2X1Wj+NUqG3EqmLfoKBrtLbpZvibOwn
	 yDrIdBfZJlkOBK5Apdh1+6UZAAw/Nz//gzf+Ivq56feLTzl7K4emodqtIk0pQG6f49
	 i0wCHocTvEdJFTXUtvsrtidbWO0QqTIOTscRvYXBiFH0+UxdRY+u0e6gIvISb6y/Cp
	 pkNgKupIkZLpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A54EB64D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168756738871.12454.16937973424832183645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00076109d0c054e34ac2163745ef28ce546942142dc4693554767568a469eadb
Date: Sat, 24 Jun 2023 00:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687567388
