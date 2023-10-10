Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E687194
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 04:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4ycv0f8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF536C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 04:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696913228;
	bh=i7mbE8jbqZZF0ccHbkmTe8gJ+BK6BCRt76+0onG5CH4=;
	h=To:Subject:From:Date:From;
	b=K4ycv0f8lGaXwmlTBuoBDtARA4o97iN9bZa1JmlS3s48oLEFcLszu4QF5mxvSB1Xw
	 TZSm4Jpvk+B8PxSq9JpaoE9UkH6xnn8YSGMil2jVbV0thzb7LgnvTgqRppu8+yjdhb
	 /C+fkDPugwYPcE36ScvoAS4zLhCQAtA+s/NNu4UfbYH8SnujY5KEZIKi93y/zrbMBS
	 1t8gc2XrVUB49H+b+hFo34PfPMWvF6CGVDVHZE/aXZ2EWi7c/qTO5OM6ilM7038+gn
	 WIrN7F4gHBoZlEgyelsz/xT2bthTnGUJanZ8gGFcw2tWgghkjAmA+Df9AHlIM6BJtv
	 OJYcoknUzIG+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FC2CD68F1
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 04:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169691322871.28658.17671257705895362848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae279180601d8be858ad5f0fe96857490c0729bc97b2ae15020b8833ee7eb946
Date: Tue, 10 Oct 2023 04:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696913228
