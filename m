Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF09289D1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C537C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662586253;
	bh=9Y3GUU7IyWK86xYR/RYkrNhY1b+SXxZr3nLcSd2HWBw=;
	h=To:Subject:From:Date:From;
	b=XtHnsmUyzXBUrpnJ9V/4yf/eranNtiu8TtseDo+yHACW7w1fbZIhgxDjKKjZWNTkf
	 uBgafFZpE3yaVrhX2WFsXxAS1/FCK2DTj7ykPpj5oLaUi484c4HlGkJ0V81eAIUxSd
	 1LCx27vkSToftI3GQfBS2GWe2GYTKZ1lZRp1KKxxiD+Q9rb1JwZZN64GWoSaHWnyRh
	 lax0HxJO1OzJLXD2WtGP1AKUVZkfJhTQZZVLSbLVo4trKXAj8GK22KJESuqlGHOmZ4
	 QcArYZOoXOanGzPmxHQNBe86B3u/XV7xmMRMZ1xs5su8TC2qtDp3Lg950hGEe0h/mm
	 s5gvMNh73NDEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565C0C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166258625333.6441.12939121031008442128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3083d947e5f967fa5d79c73a37d1ba099ae2977834f1d78f27abe860c80f0fb5
Date: Wed, 07 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662586253
