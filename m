Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841044503FB
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786467634; cv=none; b=TEz2mF+yEjqLhnA/qySYKqqNi0RIRCQfTyBpcPW3W412IIToB5DtJqiYH/LuNhucQcUO7HcNUgw2uS78gcEl6yWdvKv5fm0x3XZyVRW23X7unF1djioYfOxS6G93mT4mg9nlX4DeU3SghUY/4vk8PuKdl9M5vYT/Uj3y6PBHJnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786467634; c=relaxed/simple;
	bh=5U46wPhprH67A8ZbN2dASZyIIop+XpCvo2DJ4tWo5ik=;
	h=To:Subject:From:Message-Id:Date; b=qrqhreT8FdYKwZcLQlskQNvZzfUC2pKHY9dvxIPr72eLt7FWNo3rWFPKNGgxHS0aV03khv6cV7F9rlhjIsJ/dW8Jaoz5z6fcALflGEwNIWKBqACZrnN/Y2aGFJrJ8c1LWnXM0ySH+oWpDJJlBXFTSR6Swn46CSDHFc8TwO038lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NN0Q68/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NN0Q68/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27DEC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786467633;
	bh=5U46wPhprH67A8ZbN2dASZyIIop+XpCvo2DJ4tWo5ik=;
	h=To:Subject:From:Date:From;
	b=NN0Q68/vT1jxTUVUUtfTCODQhbQbaCrBL181xKZNejidU+8NST+n+kisFiL0AoU4e
	 pq+QGX9ggfXz361JV9H67tYhWtcRPwDtup8LdjNC7dQndMQ6u/g1bGl4bHe0WUpmvp
	 rCnOhI8bFP7PyEra1wpmU5iT45kJx0XNLvQWjWR4QhN8Pw7NKHoDPHJ+OIoWBQGZBv
	 sVwlk+JXUa6qCj/DJvXw3JWSu5E7vnuLacNQVMpusKgADNGXPCnhBKdcmmO6NVxDLs
	 0lm4AbIC0eVEGgQdCrCiJ/8hQWJQ7LcqkrUOQz1Da8aCgYb4Zubgyu5DrsHH7eASHJ
	 BYUqNNVg+9SIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4A9C5CFE7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646763370.11749.574078393885159567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8711d43c1d9dd4e02150f0550c30db1811f45ed4ca2444a99f2effb6da2dbcc3
Date: Tue, 11 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786467633
