Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79983818
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8832C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687591388;
	bh=AMXnjnIUzOxt9+NProSH0VJcj6lmPHtNBqX4Cjqtg3s=;
	h=To:Subject:From:Date:From;
	b=VSAJcXwrfRIySUvhj9/pHRTgDX5g97LMiuB96W4iiSQH4tQcANI7dju+By3mIIIT8
	 VwOvN0NdPGnUjFxlWJhfcUpdBybgDF8mEsZ3fThurwcc+/DFwZ7LvlcyUKMtbL4NSq
	 kR1fVcsdJ65WRRu+xMvv6XVtgjxkoSYZi4hov4xsf3ANw/bf0siIE9X7b2xUV1RP/H
	 atAIyQILA1tAKuFo4aYnJfz6QvGO6zFyehH4L4s3NLoqWqUh7osXWl60AbmNZ3sATQ
	 +6B+jG4UPQ/D8LLDf+iyknqxWBvpyYrjUhWBKuppeJMZDUoEOFRWU12SslAnu+sqbY
	 m3mRJ9hRITzUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF8AEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168759138869.10388.6610691525472428726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239bc857b718c8787a25d3ba257421e920b85360a159ebdb82530d3152098cb4
Date: Sat, 24 Jun 2023 07:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687591388
