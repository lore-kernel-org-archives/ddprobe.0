Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5873C653
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 05:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4164C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693977248;
	bh=re2G0yzTnkpBYg9mHy1AoXcyXMg4Gh3tLdoBq0mPGsU=;
	h=To:Subject:From:Date:From;
	b=sB04m8SDdEGD6fMLyX1vHXyk+O/C7rXpN+I/WxSDr1x7REkmP2nu6ROZm5Wo+bmg6
	 7EYKDopqKNF8s8rpGxJhAfkn/anZ5tCUA/qW96JYbLuakdNUgWEaD9QIWGQTUWuyeP
	 6rzdM9rOo1rQqE7pGHemBERZCb5c48bT9Smr0N6148ELJypzhHLwIyL2nT1AdIQmk7
	 MAmr6ByRcb53UL9c4DNE17/XbYJq1lWfXd4tdnRLTyhBr5kFRv7xzcKcjK5F9t/WF0
	 Gf4yeLMqu9VU1pRYrmshBDlDm7N8BteXRXfVC6cCPnQLqrP/BxKyecknBbHhqP9YWU
	 Yx+SXMQXf9nfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7D4EB8FA5
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 05:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169397724869.6266.8945297639504459421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4486d746146dcbc2679d8a1ef3c641093578f7636b9c03efc8fb9fa3f38ccd
Date: Wed, 06 Sep 2023 05:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693977248
