Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C8310EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 03:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA069C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 03:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686195786;
	bh=F2Y6m8hGesyjTRzzqbDhvbbWHDbXtCIan++KTxD0Nsc=;
	h=To:Subject:From:Date:From;
	b=jOagn1BEhoNEAuARy9/m99brhesPS4J6U8HQkjRvo1QqFkGco+MxcM0ru/7v3KrOo
	 n4HHyIXHQNfOx5MQcaAHxda6kyuUcDmWMT3swxlXMACFE9WoV++4fb9XDDCV6bTdf+
	 GoGjo/Rb2bbdVY2Pb0JvkJSH30zC2kVA4i3SCbwwhW5mFwyca+NDUsDaUk0kZsHFgW
	 cUA68yzoJVnug3lm3imWmKfYftVBNNxa69uYTNFQxhzWKZuX/h6suyirqwHZTZ+Kdw
	 l68tDfLPKclueinZolIGxekJqFAFlHd/5ks+KHrKkDvBEKuHXmXMs2zAnz5oLCB9aN
	 Hnstkx7g1TDuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA4EC7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 03:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168619578580.18325.1182769135277629980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd67cca70bede690760813149a1724627bf43b5a8605280a7a0316c858602b1
Date: Thu, 08 Jun 2023 03:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686195785
