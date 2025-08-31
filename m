Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40D2D531
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756617594; cv=none; b=rrYXunWAdxF+KdO0Wep20r7tNm3CXOGhMtUDXyU6f8V9j5/aJ+KljrCFsNvIV3EHCkwc1naPPABw6TetFLQ5meS1JPH+CcX+XL5JXcDK8S33X46NAy5ChT+4i8EInw/bb7E8W0TSwsUKfyhuIazkoB9EpdjziL5JVeWsu/lQkKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756617594; c=relaxed/simple;
	bh=+wrj5ZtCd1l04NLvmUFhIadefO3bkpIsAO5/w8EsF/o=;
	h=To:Subject:From:Message-Id:Date; b=s/VjuQFtWMf9jsilhYw3v6PgY4iAeYq7wxwJStZqCDkPH1ISuX9rSyEjCXpZeJPTdNnDoJQuUckFiViIIm3A9E83SLQ0LWqHUn6eHKueyWLgaeUhH681NkZthhhQgD8e1xkRGar1Fzyn1Hx5GdjNS8eQte8X+fwIfgRkaaoMNEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF/+R5Kh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF/+R5Kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756617593;
	bh=+wrj5ZtCd1l04NLvmUFhIadefO3bkpIsAO5/w8EsF/o=;
	h=To:Subject:From:Date:From;
	b=LF/+R5KhM9VwokhB+i3I/aBpCsLNhqbXaHwp8P1LPS5Tu/VnyQMPmYHMLJdQTLrkk
	 3K0Ky3DxpmmwTW8CuYF2LouFFLnIy7rMX/fBhpwU3TX2pNpN/lzybdAyUtNRg/SUuZ
	 8xN1tlU2YbCIbxYZprp6MviUUEQ8Sdf4OIVXWc/Kj0RVghEBjCCRtRCEoik0YBvAbY
	 MNfbDUamK33+bSP2SLW9dn+EL8jqn2JHcgIcY/1Xf7PYRwvrErxtW3OcvwnqrZvBWT
	 oFvmJB/cYzfreOJICltV9ahVmiYeD8lUScSMWlBQVpEXj8nypxm8oKjRGM5Q41/kGw
	 m0pTZuzWHtQCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1CCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661759357.2502.16662308268204599854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883c5e33e705d63465819c7df32a20c361276a87104ebfa29c79d1ad3fbaacc3
Date: Sun, 31 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756617593
