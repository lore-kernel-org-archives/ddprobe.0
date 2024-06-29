Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527642594
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719698663; cv=none; b=iitv0Fm/F7JcQVUh1Uo00aQ2r/fqxvoxOMSKZe1D/y+Da0dioi4DJ4lwEaBZhkprD/envO4tjxttxjfMEhKGKa97EyBBhppu6H97kZ2nL2Y89LLtSFmvn7Hu5K7lZRieHqAtpjlwd5XXomtV5A7jXHJNpBWGjo1WkD+m8a8/B2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719698663; c=relaxed/simple;
	bh=Z7YOAd8EC1YWEDVzydgFCWyKTNjvT9mxjvjC/NHh0tA=;
	h=To:Subject:From:Message-Id:Date; b=Rut2x4MWbOvWl7IqAMhZOwG6bu52LGhJioYA2BULzDDr8J0sIx425G4nwE7cCIMrcdBvDO6HVgrjXeCBqRW/HUv2pWvMCx83XqfKWuxL956Olcpau0jMoWZxmodNZ9rm2wVVuD3bckxzBMhhwL6vV6pAnCklaiM7mxFrHynvIp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJdBxCc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJdBxCc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F33C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719698662;
	bh=Z7YOAd8EC1YWEDVzydgFCWyKTNjvT9mxjvjC/NHh0tA=;
	h=To:Subject:From:Date:From;
	b=MJdBxCc3tf7z2JnnQOHGtYuZ7k8Hde6Wd9RXa1D4gVHFsl3f4V7t6Dj3vMP0t/q6a
	 rnHiOrw2gzrJ8WAo1ZxaZ31FcDoZapRt2BZztDsf/kvOnxUrNOgA+fyHuEXLg0/yV0
	 aOBi35XHYNVJSlYXj+FfkkWqFa1Fg1b8Q/8ixajDfXyHsr8F+qPNMAeiS5W+uRuTvn
	 b423giFPF2P9X+mk0Nl0oQn0904w81ZJ7ODSrpvVnOzMuYpth+TKQ19ssWBBj3DpQR
	 5Yi/DNG7tCKk/LVjfctGtFP8efBHwJsgCSt4gk7FXluY5mWrsCBozkQhUOL3u9ksmf
	 GokEyPY8vv1fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE740C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969866280.5715.12092232323206736091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c409183b999ee063beea0d943ab6e8f401ef87116f50dbad659a063066baf20f
Date: Sat, 29 Jun 2024 22:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719698662
