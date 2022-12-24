Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FBF19B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC741C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671870687;
	bh=wXS2ZAOyedi/+ZGlYKHwDnr2Z7CJKLD2toK3cHBsSsg=;
	h=To:Subject:From:Date:From;
	b=nyhZUUYua1NjHKoxZE1dgUToPMeojuXjIOJ2f/TeWFkiRMujOkO6PQqYsptSuBNtR
	 4t4egmuA27QhG4h07XccKzO37wFu6i/1EV4oAnI17A8fDXpVBpZChDGyM4iYOGem1s
	 hL5qdisu8iANw8gL+u7rt1L4GCX8PhObI64rUrSyiL9u5PUd/MNt1cZQnFzF83Si/Z
	 wNlMyje3+ziLWZC9IaSjA7RFmf/wu/aX/+5wieol4CdrwvdrSPCT4IrExPSBuOsv6o
	 pQpwld8HjJml3wsJzpkAi0MtBQI+2sc4KYOwf7xKJa+GhpWcJwKH6tZiA9hfgSYXyg
	 vgg2JQpVpRqSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88997C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187068755.9245.12877572491754887274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6065a6c06903df8d0f854dddc85e864d206c121bc6f6ec7c2c6d98224760c5aa
Date: Sat, 24 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671870687
