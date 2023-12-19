Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0509339842
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNGZesgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A90CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703011096;
	bh=90ew+3NInDARaVapobyTxZWIdRTQiACBfwfl+ftRpXs=;
	h=To:Subject:From:Date:From;
	b=bNGZesgtgOA2cRMTlL601eaOaEj8FmazYnZFn4x+D3MB2XoYB2mIGG6LtQMOzRnyI
	 ZtYdsOmaluOiubgdbkZD7YqHatvHyNFc85ko6k4gQxlaEvJTx9ARNAeAr7z2UtrM0s
	 oJIOPh9RChg3spg2y9/ZZHPBD2WdgM7m04ldR+BFL/8F6bvLrg6/fXUT9OSmHMN3P0
	 MNTXC2KWezk57l+53Ng/4OPDUBKrOFTtWjmk91W3P2aC70DuoccDhTYljPcd4g3WpQ
	 wmRquJoCVBBhvBgAi+yG5l9o5Cpd40kCXluvVVIrWZ2vRdmNxxpBdwzUXeDX96bddM
	 31TVImxW0+p3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF04C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170301109638.2214.4899887159425842814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd68c1f10f6d7ab2837f296cff844dbf5366eb4da0e523158bfe061a329b233c
Date: Tue, 19 Dec 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703011096
