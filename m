Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECF629A8
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FAC5C433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667508054;
	bh=KNPCceu4dOyTMT5OCpamIkHhs9bWzT5NDSqQNf7r5yk=;
	h=To:Subject:From:Date:From;
	b=tzZrvPCHPu0/GhBP83a36Lw3IpePKrP/gWbUJukk3fgJeuBJ/hJibEwdBZSDMr8hn
	 TDTgtZxLKRlEEjdTqMoveJ0TBxRim5xEXHB9swG6nKcFwHqSAPTNZ4MX9az8yguTmn
	 WJUVZBYdgiR3z0Onmo6AbZx96Cnw1REwiwk1x3aeRnaisOUH5ZVngUpZP+TLsyl+02
	 lenj23HdFhESkUrk9Z6o/OXS6+nIT+8Rasf3Za4jic8t2/wWPMxZWyD7zuN3CRfLKB
	 o6mf3PTtifOvbgMCgwKnOF2UtkRsjGjvAT38hArr2EqG934YasMIYwj/TZwwSEadQv
	 GPy6rUtJU9f0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C95C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166750805435.2883.13332173592131861100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ba34b59fa124ba41f4c43391e82ca51fba90cf2dcbf1369491a60aff013fa5
Date: Thu, 03 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667508054
