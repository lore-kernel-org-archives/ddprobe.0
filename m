Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDAE20F1
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78E4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674302525;
	bh=qH+3NACGWZfxInk40QkMgfmqj7sOcmLrEU1O6eJDRXg=;
	h=To:Subject:From:Date:From;
	b=kizRx2wFMEN5Ctd7GwlJX6K9xdS3GDnbgbgpJf2u7mTSlBMtA2bZLw/uE8P1Mua05
	 q1Z7NKZV1POGFq/N/TVmY1RFXakAsBF8GZSsYEs38neYnJKI1Giv8JwhgM7VEfoDgL
	 gBn1bpkSzR9IJkTVwlTvdIMx/znm6wTm6R6zDfkQubXF7Bufa+p3qItw9gzmpUd6Xv
	 pXrZR+4p0roOovRet174PrPpuRq8+5Yom6NkGs7bcEYrUxjU1xGuTp0jEQu54m5Os/
	 gRzw5LNLROPANpB5BxL4VVezBatUWt2Jk+vHDUhVo/1mrTa6QHxDe8DkM6sQZC/FAi
	 IC21R8sx/qR+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8016C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167430252574.8658.4761557264906564761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132df094477bd5e09745b936c7e591100921147f69178babcb644437ddc634e5
Date: Sat, 21 Jan 2023 12:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674302525
