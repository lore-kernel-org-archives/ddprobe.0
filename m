Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343A633C536
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774547694; cv=none; b=l+ca8LHwgcuD5uVraawd1coy/F4W/2dOGlm+dWfwLhBuAG2mASG6ME+75P7IG4DklP/UaqzIl1YonUyXwwa4XsWX/+kBW3NKHFaxNGnSrIiPMjQ4qIpF63gLQce0hS7Uvsukvg/20lELwY20VtdToVzUEfTnsVkl6I2PRQSRW/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774547694; c=relaxed/simple;
	bh=TYgLNusQnCUyxjj8tBEhS3bG4aPhq2gXF+D9ny9Qc1A=;
	h=To:Subject:From:Message-Id:Date; b=kSp1YljOoy1gX9Omk8GRiLWfn9XxQvNN+FcgtXQsZs/Yqo0iucznAy0iS0e7JtgD5zv0OaJFd6+SoXpTY+FPK1pdjTv6MAsFkP2vfPGZmNoIHKmawG0RAronFabDNhEPiJzrg1W532Au2onNFX1I/+UpXPHfc4dETcW7FrTG+GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdDUrvqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdDUrvqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69C8C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774547693;
	bh=TYgLNusQnCUyxjj8tBEhS3bG4aPhq2gXF+D9ny9Qc1A=;
	h=To:Subject:From:Date:From;
	b=OdDUrvqK/KL0eeAnLo9zmXmjJLUvopZIP1sU8kF5Lo8GWXBeeC8HNxLAzApxnWfDI
	 51+EqAqTUacnK++GCNxeJxacoGy8rOvst+cxubQ3suvt1p5ZPBcGydAvAcqJt8r7ci
	 DgOn2thLBYJN9mM80bZc91TLPa4M5invYtPwsjdj3fBxHJCvm26JK1bl06QORQYFA9
	 ozPleZF7a/xDnTgkTcBfFIf3/1YUKr+Q7MaT06tkza9nuHOKI0aAQPOWnCrLzopabU
	 DQs/3UusDaIVJSD/Jeo5llp/jXdyZOTjx548feim9QHbp6V+cKV8sfo6OHK4hhaoQ5
	 18z7ffbO1a+vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C910A88F7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454769359.29250.10828181717876644682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5453709cac7728d6d9e8fc5b1dab29b7352f7554eb3047ae54223beb5f3141d4
Date: Thu, 26 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774547693
