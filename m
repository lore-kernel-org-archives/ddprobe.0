Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F49225A3B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771985093; cv=none; b=d0xJFlbeFd2UPn2GKTmJO90x5a9fxDVMStTho1+3QUk65HJRnaHb3Bn386gqGXekUb3fVxoZib8CtGiwRiZGz+thI6OHjiMq9Hxv1lrdakA78W6Co5Fq2950Y4p1Z9PDP8a53zMcqt72eLTwVkVv1pYh3c/kiyOKf+yDQKOXHWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771985093; c=relaxed/simple;
	bh=tFE+oVD9Gd6q5QnEZInpPFhArmJnY64vAZvUVrLwshk=;
	h=To:Subject:From:Message-Id:Date; b=nLpjJIkqs20+59XfythJlFBG+E2a80C6jRnt2tIHTnWtdUKfjqA1LCjn+OMetDuM4UTtAmBp4FeppALuepj1UoZyOExqVHO3hI+wqEFxLdQDGeCK9RwdddglW1ZctImllsUqL7JHmNwyRusrGAX5HLZJ1AeApM2/2AyAcEpa8ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXkfKfbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXkfKfbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2734C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771985093;
	bh=tFE+oVD9Gd6q5QnEZInpPFhArmJnY64vAZvUVrLwshk=;
	h=To:Subject:From:Date:From;
	b=sXkfKfbeXN5ByK2pXRLITSfXtxtiqnQgtu+gM4QfEGNIEAzjgp0kpYkTSAW3/rjfE
	 j3odlzlvFfaTh5zbbzIcEpuEK8TtDU7pSHn9HM42X3tbGSBp2dAPSSUZKFZOdh8Gl6
	 mLWZtTf7Q/vWWYv1AqVhF+dflRWV1RdMmE4+zJoIvL99p/dBrzxsy08Ij/zRCUIxep
	 a34AfY1rZ3Riywd4ji8m1deSJzI8fKnR1FdqpHFciL9a9/kbKsVk6agKm5j6i5JuJX
	 CN3pwZb2jFm6X16Q4UvfriRDCApBJ0YCURo4Rag79EohgFH0g+Ly+Qpxql0BhM3fNL
	 /Gmo7Xn3TgfJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E1CF55439
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198509358.17460.6363677199651785965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9e267705d82e685318870a584c17d0b4706d11299cf980ba8a37e5be172284
Date: Wed, 25 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771985093
