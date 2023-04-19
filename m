Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130B1C977
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 19:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9F7C433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 19:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681932305;
	bh=fRLoqIv1TiA7YLQL2/ImdSy9fuCsVmLDKWO26VK/4xY=;
	h=To:Subject:From:Date:From;
	b=a/6hogaWw1YqoEh8iDzwH58uE8y/mzajwfK/Qk6u545lYgCqpInYpvyI3Ncz/ay3x
	 gh7xOdjU/tnqnzf1d5P6ZTyj4hUinlVgaAgjSekXpOctUX+5srj587sY3+QGQyUL+T
	 uw4I26fOh0Yj8oh2lIWYSoC9IOzTcd8sAEkazVAGaVjXx38S2IPnaogJi2F31QX1Qz
	 9B0QFE7s6jIAur1BG5uNGe5X+FRwZ5uxf+hwwkOb0bNvReIY7w7/FtLwEshMc5NXtY
	 Lc11aM5eyC4/9wwm7NI9s7bz+39diNhjdykj61eCqQIi6K4xn9VpDWGmhSHc6p0GMt
	 LafmZwvcZiQgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C61C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 19:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168193230579.13624.5925951426051799752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2610b5b7e2710d2c2185d084a3afaf9cbbc723cd36e64d8a6f679171aa7b07
Date: Wed, 19 Apr 2023 19:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681932305
