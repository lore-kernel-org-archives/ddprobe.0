Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B634D15B3
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720E9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667016054;
	bh=FLr/dRqz5cmySCy0f8ZxoHbWqzeBLOzEw8Dwa5Xlb7I=;
	h=To:Subject:From:Date:From;
	b=IMDvxBqpa3keyKYbyHEaRzLtlbsn0FKrCfXyFOv0F/bbO4PXRtISGYR0SuSuDf3WT
	 ji8GXtVWbeMw6biedCrFzM4FVNNCcCWSXvUaf1Bpjk2/tat3zsoztDdJCBAyolIIfm
	 rWx8njJurRpAncxCoMVxxIHslQwLydxfHwu9reHt895W74e7PDO3HpoXidrA3oeamV
	 sTTdLV5NzdRh4GuH/P1vQpmp/VkMOCYGNsMs+aO7Vtfp2OUO+oFOeVTZUxO9Cy4ty4
	 sQsYse68ZFvmFEA1bg1oTLRlDycHJldJKDL54OldY3q6kYQPz7GMaeBQmXuxKY2lwO
	 2jaLggf7YRyaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571F6C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166701605434.1239.13869018661065577593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ebd203756936485e514f038e1db47b0302a2e0ff2863e92687bd3af2365798
Date: Sat, 29 Oct 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667016054
