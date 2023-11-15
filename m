Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F31A7E
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGEZ7PTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C5AC43391
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700037496;
	bh=9y5jhukxvvm7+wwfkH1Y2HqkmUu3iTVmCcNsWQczdAo=;
	h=To:Subject:From:Date:From;
	b=FGEZ7PTSXZF5yS64lRZckz9WM10iCGoalaNrlli2zmYcYMH/LKzXVlGXpFHG+kMRb
	 aW8YYlWtTWK56x+VJ1XCgYef1tRnXbCpmn5YlYE7OJUgnQs/splk62RBV7oFoh3kb9
	 QlXnEdCSuEZJonlcwexRqIh8bHjxsyo5G3YfYQ5r2OyHrSZHW+0V4RJb75ELdP6fgJ
	 QLBVj8+fv5AFxSEFlTDPtdDSuH0WELp+9yC0f6gZ3c7c5jrLC2hv3hmzDo60EdbxbQ
	 PVlbTifBsDzJPn6ih6UAbh2AU2LGGLgxR1SY9M8QlhxkwAYmz3wafkIlm/VLyHO0af
	 tMHOHzT5p7Fbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6708BC47074
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170003749641.22073.2421804068194134966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc43fa4c6053a8e6f9f8d2191f7aa870cde15ae990bcbca3be9bf854e9cd3b5
Date: Wed, 15 Nov 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700037496
