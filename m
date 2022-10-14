Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85C163A
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F96AC433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665742253;
	bh=ZrDAeVGihILTwdBixDT9WzSukdrVXmJjMJFXhLTwBcY=;
	h=To:Subject:From:Date:From;
	b=dGPTIvBsNO21SbHt0o8gRKh3n7AssoWNyEdGjiK5jiRv6AYNedpItLYiS5GzeVII6
	 raL0Si3oI7rMArXnagXzVj6hmNmWc3pHnuC6zJyNndvDxuzOnK52xzEfsGlJX5v8ai
	 q05Tn1tl+gBDxNzJboe8C5iZs5TMk7IcabaZmvaH0ZAvYse6VIoyTkvJoTxXfuARTp
	 hf1WjKVP1ZP/mEDKYsQX0NQa0hV+RTlnIy+Hr0RvRC0Pi6gg3hqL23C9PrFbt/Ol1x
	 hqIkdvrEzWzC0dcXOS/3Qy14xwmgTYkktcrDIvrdyIo9q3vx9hatUCB++WBZhx2BYW
	 MT44oO2GsFLSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D5DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574225333.29981.15949668270726286737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27f5d906f77c87491dcda2a8dc6480666a081a4c4e2277adc00bb4c83cff0d5
Date: Fri, 14 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665742253
