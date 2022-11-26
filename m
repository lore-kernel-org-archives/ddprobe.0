Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137C215A8
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5074C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669428654;
	bh=Q9dBtSK0zqjpB0NXtNdFp6jleVVlFxkT2xMXG/nJV7g=;
	h=To:Subject:From:Date:From;
	b=k4xSB9SiFybldDewfI9R2WBD0iWJEKUiAm88tnJjxnOFejis51c2w05pLr41k3Tfn
	 RABaqrJ+DwR5PL+dBuQmOJbwwunXdWWZSd/IesfD958zFNGlkFuhaItNOGxUzhSh0S
	 7H75TOQS9pviQ0bqnn24h9AWub8E2Zn1URnAXDSS6DauhkoZboT5Ed6F/9nzSpEALT
	 mI+iM1qpBRngYKoNoVO9geWRlOV90F1wbBvUSGlvKWcljJNmWgVprrtbjAC0dDhBT5
	 gpVLqNISGSw1Hs7g09Tkv4BSTnRB8E06PrFzciLBHpqHFM+KnrQ7DQNY5yNVX+VtLt
	 HESOTIKKOc5rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84E12C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942865448.26401.3482882675402155691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49bd417721a1cd6350ae7aac087a80c00456b46abd63029f62fd09d32017edb
Date: Sat, 26 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669428654
