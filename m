Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C568617CF
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742CAC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665583253;
	bh=pL6/ytZ/yK4G+ENFPeoO9WGVG+otGLJVCCxyLTVPSVo=;
	h=To:Subject:From:Date:From;
	b=kWVp3g8tMyZNhueByuY4SfM6xiHg01oQItduNd7V/F3ltACKnxrWQBFHTRK2DvOvx
	 0Zi9hmGk02WHA1Lllkk4nkmhLjv+iQ+lP0bcyKHQgxHzoKPMBzdGcioCL8PePOxjCy
	 KKWU8xWW5ABQ1ohwrbPJ82KMV01/LFbtjrN+pTYl25CnIDfRvMZ/tbmoDBrCYBH2LO
	 hLDLDR1gz7lCmoDfJW1Xt0EP/BHARnTYzlUAJU35oly0GVuVjbFt4y0OUp8rj3iwXQ
	 UMX5x9gWdutEODfH4n4o8tZ9o/jZINpRQfwoXQS072rMS+UElQrRnCDSlfXS4j2a3F
	 dDaMDHDbGIz6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CE4C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558325334.32101.17858312686629870453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0a0fa7386b737562a9f2c7f5154e3b8c5bdecf72da9409971f74f914c463f1
Date: Wed, 12 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665583253
