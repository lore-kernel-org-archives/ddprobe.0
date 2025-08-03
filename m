Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F504D8D1
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754192394; cv=none; b=GVvbAHxLHvfLyf6TvjvBbaKzUrC76vYtNfPEWpuq4jh5+HbIR7cAASEv4a7Ogz/ir9ANabDJiLU4qBBMd30wokOa7CjSJvuoZwBhqUKsCy8cQ7pi77MPAawrGXhB+aB1WwodC2czEpp6LH0CVoJ9eNu9xgqKU5AxITmaU1SLu0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754192394; c=relaxed/simple;
	bh=/eVMOGhw6exOZzGKDhf2y/doBuSyGRnwVf/4nuBOIOM=;
	h=To:Subject:From:Message-Id:Date; b=IYqimN5enyC+ojEx8F4lZaTGflmVsGxx6HdYeqRwP1fkKe+9owSqAWTezjk8MjPhjSA+Kr4vCVs8gcA8/NT4WmveGRm34m7czlfozKvkbsjKMuFLw7d80QljnDZHuIoTuHeIXgwZOLzHfJf1LlrsQlhMqfEPeFruoM+0cRnoYG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dC+mY2xz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dC+mY2xz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77FCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754192393;
	bh=/eVMOGhw6exOZzGKDhf2y/doBuSyGRnwVf/4nuBOIOM=;
	h=To:Subject:From:Date:From;
	b=dC+mY2xzJ5jGFoS+DMyDLwQJ+og8IAG7HW0GgC01vgolymYgbEmkU0qxKHFf7xA9i
	 n7zRw4DPUUMxSSKk1AOUhmCW3/BSvjnpxF+rV9oGCVX5ruKRfCgo5HwVsoyZljqt7B
	 D2OMinRXDIZd48wqkOQV6z7RdgmIpn6Vc3nNjsDPCsR0KZzdAzXruUp5zhYnUhQzW/
	 h8N2l3rBeETPr0qneU6NvlCp+qvpRYZC3Kg0MirWigP1Dd3eY4zBm+BNuV/SN44C2e
	 rrVx6w+PtAdZM70ql7vaNqLdD/xeJWaL4fmkGZrpo9mmcsYE1exesqNarBO3DfgPmy
	 b/ndISOS2EbBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917AFC87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419239357.15532.4623486284304719699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffc5450a65729d541d42ab0fe411e011bbf69218fabff02b9b23da2d168e4ae
Date: Sun, 03 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754192393
