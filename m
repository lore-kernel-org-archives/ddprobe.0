Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56161BA32
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D3DC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687952588;
	bh=m0+BDFbJrkbSLB7W9mGnt2SVz8U1VALZQih7ogH/vLE=;
	h=To:Subject:From:Date:From;
	b=NEYl4Xu6CVpIODoUAyCY3SLg5NHGgbrocdVAK6SAXxfGCNyaFsclnj/pphndGaUYB
	 KrDywd7y93vc7cGeEronfPGBNBpVW4TUj1yYmh23yJVXTPVKI1IMWPiUD3t1eLUWVo
	 NGS3ab9bjqm4Yhe3JMso84yGwif45WCVSwDtQ2NrtqZhisfRpcQpPxueQM+Ulf4QI6
	 bmbnvETR6pjeXdfO9LZryQ1yOaXeiLPby4KBOpw/jshBF5ZKsA9t0+0B36xCGzpGdX
	 aubiyL+3eY1pxBxYCz2vInPoP/o9ACK5J+TmqHaTkC5TVP84Hg1UbjZy3UK+KY+j4b
	 +nEk1n4BBX6tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9DCEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168795258872.9006.4283962976186486663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12d651c964c6a94e97334183e5d20233317bc204376813c8f0869cc6ebd0b7f
Date: Wed, 28 Jun 2023 11:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687952588
