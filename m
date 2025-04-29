Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA7825F998
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745958594; cv=none; b=sLv+k7URp6KNIueFEHD6192q4ojE/etAxGDg5Q7R9ObcRSIeQfPBSoTIRAQSH2n0IPgD8Q6YmsUgWlQ6RH3U1296/jDNz40TFxMtCQzBflPiahv0B8zRyW/aystj5yxDWsjotr5qmf84c2IaBUKQGR3Z8+9MiJzmT3Qds93l7pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745958594; c=relaxed/simple;
	bh=j0Fbkn2HDFN2tRGtGqfrEfxEiS73dqw4KOQZ/+yvAJ0=;
	h=To:Subject:From:Message-Id:Date; b=JcromSYzgo97zp0p9Xpw/W0BKOqd4dvhm7odT4nB40rY67zfHuqvUYDtrBFLSVra+UEcInHgod+tTCnbJePq+0dtqE4pH2vk2o1ceaySy8C3+TNWrjOtjUuxWqK8S7dniSJcOFBEncPPsDbmsXmg2I3QVg0qj9xYgv9Wj5/BYyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZodHq2Ge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZodHq2Ge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E20BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745958594;
	bh=j0Fbkn2HDFN2tRGtGqfrEfxEiS73dqw4KOQZ/+yvAJ0=;
	h=To:Subject:From:Date:From;
	b=ZodHq2Ge9qBTRUqz9YQYwQVn8jLzGS4R3RCI03oAG2jlle0Z9ncpp3+XkZ7uVyXLp
	 HMR4LLxVrVQGpstlfDt8lg4oVxt3dgLUou8xz3qszjckTxqStAZzWFIoM4EXzr9TUG
	 UJMhbkHIQ5LmPx3HBt3k7QhErywuZBiYDE7ZCqtrNxIPeznI7f5meopti51tK+cTyR
	 c9FQfiHg9daHXJYE1VE+YVY4jYBeAOxKKMJoyQAtqNsxZsiX350PC5lRLUQygF16tv
	 7zfkqm9t+mtNfOTvSsfrlNQGR8f1bDDLiOV84K/j/3+gmm55PHZaE3deMhMS9y1DXy
	 Q6+3v372nYr2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB7BC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595859357.10717.10164429354353930540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22885c1d78fd0fc2909e7bc06ad772b327638424324f74922b0543b143cc7324
Date: Tue, 29 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745958593
