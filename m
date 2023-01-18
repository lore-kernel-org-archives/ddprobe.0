Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA2B7B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3A6C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674033687;
	bh=M/qevIYKCYKcfdcfq/mGgdVUy5KxbpriSCd2ygEb9LM=;
	h=To:Subject:From:Date:From;
	b=kopA4lFOC3BJL440NIn2rKlZ0GFcq4UKZxyIgXrYdIf2X+7Ywg8P/XT1dHr8haUl+
	 2UGJvwnJMrD7GPKKlC+xNYQIGmNqCyReoslJTLX/99KlcvyEWxPfG2LjxCeZGI6yxb
	 The4VEYe8aGafVKzkeA2Ms/8zC7wdBP8BSePcsRNGSQ2UFmmKksgAHMMUL7pXrEcEy
	 Y4uRQyX5Gk0JCVy46LsMyHauNgLwIVj3DtbRGsMYZ/+e25HW/UMKnsTyDDGmABTYWX
	 K5v6gbZDoIfyNYYMG+1k5yUtLLjPc3YutsF/A7j05IElZUlJ+mCGzXeT04qXct9BPy
	 bMRND32bpqw4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E799C004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167403368737.12669.16782640692293530093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da028cdb989ee1be991fc0e788997f98a66eb4d6ff71bec53ad71a7a4ce1ae1b
Date: Wed, 18 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674033687
