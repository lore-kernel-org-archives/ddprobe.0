Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E62531B130
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774300494; cv=none; b=JWeI3KAUnJG9Q6FNhpbowXPN0TJyH2q470HvtdRdPBu2tD10R9yhQTuTK5ivvhNmS9El4jnntfzaVpYE+mXkxRM2b6Q9TnSB0TgzNhH54SRwAoynV/FwDxezcRazFjJHe7wtVAy1coRJEk0bj7LtcjmlGlQUfF76LrBxoLNqWi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774300494; c=relaxed/simple;
	bh=irMO5hPAW697Z6qCgmALy3/x4ce/axlICB7hEvk21aE=;
	h=To:Subject:From:Message-Id:Date; b=sEl6KTpgjUgNKqKaIkB1qExRnf50jM+eWd35pTroxBWqhH9aQI3y/8zXgcPRjkStcVYgmv6sksWSeeqwPQmGPAa7uVURRVyQZeYjdl9mSx9HShh1BgJ6/zElmBzmMAFat6d2S+6s/QxuunCDXp+M8PNtsjZAp9pPwKHFtPjwedw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ennhooih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ennhooih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9052C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774300493;
	bh=irMO5hPAW697Z6qCgmALy3/x4ce/axlICB7hEvk21aE=;
	h=To:Subject:From:Date:From;
	b=ennhooihJZttMJBuQUoe2g/fzQDsOQgSi1PDJhvKN1/5BajxoHZnzVlbC0bvyAR1d
	 B3Fuu1kX2TZWb+5moX4rQ5QPVm3xBsK4oXP6De62YMfuteWYlDnbWm6aqW05QfoBNi
	 mFyVRRiSErSk5qWuM+GdPhc1XmJXGo4NXEzxLnbmFG098hCfJIhPyzglAbMMMj2yKR
	 sz29bDEgzrfKu4BoRQsclkLJvl4ZQ7cl/s70ARwdkbE5nc8KnQrNZ/3bsriJmHez3L
	 GVOzqD6u7LJUQUeYyFdy8GBdk3VhCPgMVc67IueSvn9WOWAaVifcSQ7M4ijuWtc5sP
	 C3RR/ZLVZh/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A75F4613C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430049358.23647.13736581102675846360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b02880cb42a2fb9d1acb06a1821f8a42f2c8b764cafb9b61052fc6b4bcf2ec1
Date: Mon, 23 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774300493
