Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CFA76025
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748708994; cv=none; b=JfZxw9YCkulg8FJkoj/+VJpqtw5vcuyjLOxk10vw+lDDCSaQhwPhnrQ3lg2U+EVRag4DJvFzpfMShaZjX7bRaIWcDM4gjt9H73H7T/xGe5Bhvw7UF4xDS81YUUUu+yYs64Q35OvkyuicKaDywm4FNCH2bQvawb99lNx/fLVx3Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748708994; c=relaxed/simple;
	bh=pJOREKbOrSNWFem774y26itchW44CcKIuBWc58d4dRE=;
	h=To:Subject:From:Message-Id:Date; b=cJXtY4oAJIA0BpJXTjsmO96v6RTIFaQvv+IulVQ9c2ykXooI8pxaRwUWVClcBUKippBbkOYtnsJ4e08RvlVbdUoYkyvF+VPud4PB7mKUjRJzSHZfxeBz01DoIKx3VPHxS4I0/iZW9xV5m+DBmcKFehZwa8fjX6SmqHDOX4U1JI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bvmh3a9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bvmh3a9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CF0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748708993;
	bh=pJOREKbOrSNWFem774y26itchW44CcKIuBWc58d4dRE=;
	h=To:Subject:From:Date:From;
	b=Bvmh3a9gm4+C+Ul61kGjv7lZXHyXxDheh90DnaoMuRMBfEo3QzwqOidAXDBVa+jiI
	 lvCkeMRsR90dg4rEzMaYAaE2wuGWu6oYXHJliozOCLsUoBJJo3jGSJVhVLGI+1pY/6
	 StpkXCX+dWYiiPNpB/VExS1m6KXexvxA9d9MsaXk2dtI2GKgAdYgdRJHzUGEhKRZo3
	 MNFB/HYE8HKdvc4u2OgYAQP6BB+H3NWnJpKN1omh+lzkULYmDR+Fcv3hqbOP45BxNe
	 dpLrScdqe7QaQe5/G9TVW0FCQiZvgTHpquevwujBgYChx9xd6N8UQ+kjf/L1J6DVCx
	 UE3vksq4dKhdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D937C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870899357.7653.17266625275185818334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d772fa7447febff15ca99a82edfed1cf4e99e40fc961a67fedb4be8a3f1e149a
Date: Sat, 31 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748708993
