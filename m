Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D9410F4
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 06:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4659C433EF
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 06:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684738385;
	bh=zPOiynyVDTi8Aqj9G+OXeGemK/9sYcmjt6vglLZFtFA=;
	h=To:Subject:From:Date:From;
	b=Y/FpZb1wDN8AEvEqPhSuwkVVIE1UxXL91ZbUTLVnPO3Q2fRgDaux37mPlOOrqAFdZ
	 lHaQwOyY6c92Qpcp9cH9957lduAV3465tZK8xYk+funnVz+TPI0sRZSRH4KWCX2DYe
	 bNXY0q825ZawoYLbLd74YkeIa8HB1/+XlBJhT11aFkQFTTgBe6xueG456hQbXzerE4
	 6GkTuPAgstZ8p5Iagu9vE94OSsoLCgpGvcXtwgVFvsa/fSvnAHgNN9uanWKRerRyU/
	 JsaHPQ1cSBNmpmxgMeIEk3X/Z1qmfU1uTpddXP8xZuQJASyXxlsktJhCKf4DkO+oan
	 uvw62bavDbH0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6428C7EE26
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 06:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168473838580.30731.12577332345721077780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef6a045b7d3eb334d470c40f9d4cfd664f7157648cabfce7f07327bc3fc3697
Date: Mon, 22 May 2023 06:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684738385
