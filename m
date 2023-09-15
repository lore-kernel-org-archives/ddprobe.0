Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594097F
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 02:45:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8718C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 02:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694745909;
	bh=vTQl1WmkWdqyR0RYoMnpAs1PMYl0/I1UhiBiJv259Pg=;
	h=To:Subject:From:Date:From;
	b=LiA+RPOto1yHBUzgrcLPGDfe7hJNpB70mF8Ut9AK2Ggg/3SeAcl4QHnwPhl9i4WZA
	 jl1AvBgklmtcEGjKHnjsKAVzhOAeyoUpZh6iFgRDdciFt30EOtL4VKabg1CGaYUwWk
	 nfLpob90xDS724QA4XXFSUFrPF6IZNjAN44X1TFov+k5iBBpub26/Fr5Qns1jHuA+I
	 tG0ssIJpxYvywEfRrkuXAqC53xKpWCuSuOC9Z/vJrbUJfq/4maTDhZvQsfI7Tf6/y/
	 c4n0kWLGgoK0Zd4mmThUGB+8NvD8PkjNENrROVZ2ye37DcFCNzdRUNFWjWIMsqpeAR
	 ABo3mWCECz9RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB416EEAA42
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 02:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169474590866.31316.1377376348387224008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c839cddc7186a74153c72d18d4930416447a730759c18c19a6e34f5244b11b1
Date: Fri, 15 Sep 2023 02:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694745908
