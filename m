Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD20E33CD
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69839C433D7
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664715053;
	bh=7ghz0CCwNvAEcGpaETOr6NZUxOAPBtdN4ux2kkf2CpM=;
	h=To:Subject:From:Date:From;
	b=IAs9JyL67VJaaAEWetNkU+5OTZAGNHL+DhX2uZWtQHt2dMwEI3LuQv9tOFHD1u1Aw
	 hWo0uoMMAde1uoZGOLGtdcAP1f9CzEWHWGvwc70asK/oS0Mu/fnhzeahQb8WcuqtzM
	 xAyoYBfHi2C27GUdx6wYeBPWNqPJruFN4aaJCUroeD0zfXWFb3PBPyFRwG5S2NOtF2
	 pxzQZytpQvvoTodnNPABJFGMoNak1DMuhRQgIQurSK0+o01P1A2xHa6gIbfn5UePMq
	 E8O4UhiEW+srfqsHK96CvA1A17HfGAXYGE9rWch8eaGLI4orndILTTKFhnMcDYh84b
	 YpCNJh7hCKKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E7BC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166471505332.29520.11025946810514890613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c892ae0e3ac730422aef4857fe4ca57502b49d8f17158fb908728609f0867416
Date: Sun, 02 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664715053
