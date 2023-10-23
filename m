Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4B77E
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlivTEe5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94E7CC433C9
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698019696;
	bh=3wRAwaiccISIcW9mIL9VJPXG9Dicrz1lY3B3Dke0Xfw=;
	h=To:Subject:From:Date:From;
	b=tlivTEe5Yoo4D3HssoE2iTjaUCL35nHve3jIVQyg6syL9og/kDSyo6Z9oNC7Xe604
	 xGmdRo57naGrIy9WeV8yW+RDRRpzyWr73n3jEi6mfPlI3zrvPIMJSnnRhr+n5jGGIS
	 E9iqgpzE9LnglkLYporM90yL/R3t82sT9zUpBpWlbKXiLWEXjgZrJMyxZ2dOyQg7bj
	 CPiPlDhHCwnOYwqjkTEn0jNcsS5485QQx5DfRAP6Gs5javPcQRcSC9569OCbMQZcAV
	 yUEZgzkoMfEAIWb14p25C2DoQ1pvlOg3BTYlvC6gKDFL3Oxb5sw22gNoI9hd3JIHRU
	 mgdB52cYn0TeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7776AC0032E
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169801969647.2542.17772449296316488511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036d95f2089fe7895aac47dc17345fe127c08e8d189948b2c4c480e67963647e
Date: Mon, 23 Oct 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698019696
