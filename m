Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199EA38DD0
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE4Y+S05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CB0C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702302496;
	bh=dmaFh9W4UZhrD5zITsBuvR/FGmAB3ykDtGpki2ujbBM=;
	h=To:Subject:From:Date:From;
	b=tE4Y+S05KkZESjPghS0r1AS2qYLV870cIBAGGRDHyUUv+s+1LVrFOpJtrPrRBRMPM
	 mWzLk/MYTsXxQ9o4iACCDEvlgjZ249qlzUKZDjZT/lkx42VbOjDkyKs34sXixtRFfy
	 DbONZTbp1x/yC8xhTfSFiU8hopYqEuG4HyuBr+nWas4F4jTX5lhVD51CTb/QP0Ih8r
	 Yv/afa+NKdBHRawPc3z1cCnH8wN/u0/4KiYA5biO+DCibcIcQOFIbHNdrtsYw6Jjhn
	 26EArpsO1AAM3LyZ36GwklYk8S+m8REsKBz65EzVFEQbzmiT/cAT9CUDqy0Syasas+
	 ivG8qeW/TGB1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD33C4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170230249636.22092.149632012363961694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3f8743e4abf88391c5890942f4f3494c6f5da4ea0db1ee1d7efca25dfe36f7
Date: Mon, 11 Dec 2023 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702302496
