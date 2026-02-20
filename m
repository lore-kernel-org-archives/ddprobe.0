Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE3233711D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771581894; cv=none; b=kZ0Kj3MpkwkqSe1HaIxPMlHbBjW2mRDCjSjZpSweJGB5F2zkCLdaqd6Jl5XM0txgC3OzsR88IcVjQ1AgkK+kJFKnoBmKcrItrb64C9YseLOLYr9KQF7DwlLMXF5zyj6awVeB1uO1tCesgMSdXn2Tp0NU/rE2otV2Y0ZEe1kiA5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771581894; c=relaxed/simple;
	bh=eF3V2IlypAollYm/KtfbBZd3t6wc2rgDy3iwTWVX2hY=;
	h=To:Subject:From:Message-Id:Date; b=mgMC9q6p2zP3HFHqEvy2As2dUz/tCleX9AaZKdPMv6t8fRrtPtz+WSIU75//UedZkDMZFtN8s+Ei+1z9Na95N+j3Bi3nkXfi209iNr7natBy0X1QwHGr+mSSyOz19sb33QpCuY8y1IFO7mUaQrylBqyvLi3M4Xd9PBqpKg9+Yak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0Z+6SY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0Z+6SY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21C3C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771581893;
	bh=eF3V2IlypAollYm/KtfbBZd3t6wc2rgDy3iwTWVX2hY=;
	h=To:Subject:From:Date:From;
	b=G0Z+6SY09/a2Ex3bN9gRUljEwN4hLUGUwp4MhhEPVnlXqp5SFlMpqwpSr9m0NmDcT
	 cq6kM1BZsaiuGTPJXwaPstzuq+HkAw/DaVsigjh9R7yW4xqYm2Rs6nu3p0MDHpVJ3y
	 t5F1JM9SGoI8ltDJ9ouLzrglJjvxz4y1LNBeC5o65tw7wEVJfG/S19MoXMmYv9LQaE
	 ozeRlb0vWWljiWAxlMK7UQWxZ5HNEmOeH+BbEU8KsKa9sigRmbFYikbUXxONXUx/FS
	 yGF9sJs0CeT9+wp4r2SwfwNkIbvvkRYLS4EmWFFBIM3wFi84dLgc5+7Pj1JrZOCnCP
	 r7wYOUdxOC0WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924EEC55184
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158189359.16482.2492881012096040829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d210038720930169f3674e55c13371a991ca868223c5ef37f7a1581da81c8e
Date: Fri, 20 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771581893
