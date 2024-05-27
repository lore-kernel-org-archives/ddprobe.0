Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D15B73455
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716826463; cv=none; b=Uz5H2QEDuaVcA9l2TMHXibXGcE7LJadLthfj/BP85taQh9Apg38DOAnyPX+KaBECSqc9VHU6blHw77NeuyKqrYbYIyTl3Oz6VPIHkXxVk/nFSkqisMSHMw8HjpAAVkjEQSb9N7Y/+yDmrjG/ffJYnnRCWMVYGthT7VwVId7jAXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716826463; c=relaxed/simple;
	bh=ZlvrEpxsf9r0I1eEglJ/ys6/px+pBrO3UNKlgMGkXe4=;
	h=To:Subject:From:Message-Id:Date; b=EQDjeJf1yVqi+PjdFw4TTzE7vPt0zG63JoIbqcrGS0qlmwXuOilTlpGcOLOqcy5XG27b1IRw/ln9zd6FMwD94zaQF5JmGCsi8Ao5MBPgRAf0vHYfSMODP2ETnLe9pJBB855OBpPQORX6Z0DQZvAlBjqjojdHuMiYOLnxC7+0iuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE57IHpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE57IHpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E17BEC32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716826462;
	bh=ZlvrEpxsf9r0I1eEglJ/ys6/px+pBrO3UNKlgMGkXe4=;
	h=To:Subject:From:Date:From;
	b=UE57IHpGHkPGTnOhmITFA2KTxQYQDIpKVOkXEo4/CMWcjluNOUz0VAXnxB7ZuSBtN
	 2pxIyUjTHKliN6JwiN5BjLJq6zUcl/DPPGoH7v6AR6a/e24YFIgSI2aW5UIQGSrtNi
	 sthNIjh81ABXX1NHvDmL2XetSJPDQLDPHi+bBNxqzFJdLQW3h+Q0Z1pmpN6Cg6nZIW
	 F5the3PpjPcEtIBAowZbmeLnffrISAB8MRTv6i7mIsxJ03R7YoH7QKZjV5u0NnInrT
	 dkn/A5Q+b5cSi1sJa7z/Jnopj/jECsTfDoMqVIixvs6rflomqAUqso21HJ9sYqm1bX
	 VVAC8f7yTiYdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE046C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682646283.13104.15694201887144862866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d831c318c74c2df11cdb658a3da6791bae3e67bfbc4ff551fb631c40f48e8d68
Date: Mon, 27 May 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716826462
