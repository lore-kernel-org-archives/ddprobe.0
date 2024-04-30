Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4371123C9
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 18:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714501943; cv=none; b=YwxS/+gtSAyc4GpMWUC2EJxjdlsHAViEXdpmiJY02d2gwEEYhEA3xVGWVn6rQ2PIUszthdZikhNpYJYU0PddAMLa6OlY7VY17sOrCCWiRMB5bnIJQfZbD3qqUj0tFTw4uZ5nbdr+kcP1gofekllzU8w3+TUq9pM4HEwxEkzPYUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714501943; c=relaxed/simple;
	bh=W+TYmggVHWuXDSh9OG0JtnheYq+U3OBoLFPrC9L42Yo=;
	h=To:Subject:From:Message-Id:Date; b=MQXSsUwuZ4HCe61rn/WYQzHMTDy/FrKOYqHXaUgQpRRCkh53hCqksVvmjG3D6JsMfCRrbiiyw1yIZ5Ck6utA6sepPfEsQ65zRDbXcRMXgWzAL4x8qiziLX3qqJfOUvr6+zgUry52MQk7WT8WN9Cz1j7dTeJWjaANRBl18pbdCjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAt5LRLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAt5LRLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D3CC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714501942;
	bh=W+TYmggVHWuXDSh9OG0JtnheYq+U3OBoLFPrC9L42Yo=;
	h=To:Subject:From:Date:From;
	b=pAt5LRLB8Nx67druAWJRCqjfQJn5s2CGwidaXzGpUYlkmjK2eb2XWuvmSert+RweP
	 HKw4NyZgW8ma16jdefu8VaAj+s7ASW6vIpKWToCkqRxoXHP4nWtfnMw5aI++BOikrf
	 2AaRaKmHPQrdpMituBLKvGUHO+oQaGoIal7AU0sMYkwnItoBum3MbI+yFLTi5ILMEv
	 mEnd+XA/park1y22I6CbLHSyr8sWUQk+SUy38i/zV87261w9Bjpc4IM70qW+Ljdgur
	 GfOIu2p/q4eYBDt2Qks9oEgG2SDtWzplnvjbq13gR8BV6jsEFzfbu8vHK0erYFTsF+
	 30CuO0eWEZILA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBB4C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450194277.24241.3281222818743682476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b428dcfb80aa9fc97edbc8c596989297ec80f6dc78ef2f07ae6a75d1b07fbc32
Date: Tue, 30 Apr 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714501942
