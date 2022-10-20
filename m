Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE39D7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A77CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666293053;
	bh=1oSo4TZBYCVx6vd44Nf8GkEZIlLRpV1QAr+KhXTMOQs=;
	h=To:Subject:From:Date:From;
	b=Z4gHKf1ZA3mMVrtmhqLUrVUmDhNIZVesHlz3Y8wp0wf6DQngZvua6H4q7BKMvMehP
	 /oFLKWYer1G6Rb80cpe/heu8+0XL3j5WevrWc8i0Ez14R7wFk30iMPRniAVGGOjEpK
	 f4k093pnFuqGSPDNlkMVohbSFYtYkgWqi0ixbw5VZfbjdSg9tJpHZm7tinezgqJXo6
	 L3n+k5so4tVhjQuBch3brWIiysgRK3yTngQMn/hGcUTREZL+Xov5Zc6ZXPhUdjgT80
	 /08waG590K9YZQWmPrxiTJ5R8SZNeoZOLCCteXLrn1MnJUTLjXHvplv/mQ2bvQb1vZ
	 P8UN7ACt3Xq3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53480C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166629305333.25871.9445923470106304018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c122d6dee4654ee1ec04e1c49f433abf1bc1b5a556e94bb9f7d4bb885b2ce9
Date: Thu, 20 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666293053
