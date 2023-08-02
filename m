Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF5933E5
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 14:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93BBC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 14:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690987928;
	bh=cnxzB0VqOO7UI8tTuWO3S4CWNjSqV1UzfXJu58ZnqHs=;
	h=To:Subject:From:Date:From;
	b=CDWVRiArPTloaOGZK0HhozidVW8G7FAEKa4bpTDP7uXMUeNWS4V6IFO26izZK6GUp
	 vGpOp8PUikvsu+Lneo6kPLZxfGwJFeTsRmjMsLcYYTInXRIMCYqftYsk8FPGWVDBPT
	 FZxUjWcIjttTzL2Y637tjYTpNuQAR9n5TgJ6N7d3aCPban4EpkGCCJzxTJwz/7LdZz
	 Ho/20mXNQSZn4xrosKVnpbcotROINvHn2eL124YWlF26FU85oPGlrmhqnVbNa2lv3R
	 AAQ/6iKo0sdGmFvQv46wIcKQ614Q29vsYrdfQRT5Noq/HRZHqAR/s+Ug5DGWjgMtg2
	 wovwJe8qY9vxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3C1C001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 14:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169098792869.3981.17266093489907377683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135a97c0a65ad88e1d26806d43095587bddb9c90682641d68a4a773d2362cf42
Date: Wed, 02 Aug 2023 14:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690987928
