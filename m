Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E479143C5B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720135523; cv=none; b=nXI1KRypnMe/DytGMt50h0n+KsgsB5rrUCE+1aclpcp2jun8k2eJNtH4GAP0Wh+5VVeiy1Toe3224WdaTLrCxLBIUgxB/uZuliwmT3LYo1/wdhGhOcEBsF9vKojQUmWs+1gLTt7OaIpHejYnPyDxSfi7y/vGGqf9Zne47cMKMwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720135523; c=relaxed/simple;
	bh=i76FFF80U9Vw9AUhVEL5Kmgw39iqLThRV5bBhpwhMiI=;
	h=To:Subject:From:Message-Id:Date; b=mid3Opj1nyv2iSmYnGNmDzCmpWCkHAl3z7trsmVYt7YzI8NM/rmP3dXwGtEyi5FkPAQ512A06GUNQtP+smKKjy1AzSvHKWyGcQqmEv79OtdNKCTgFgm4VDQ5ieuvKN+3+SspRbMqFkGMiTC1uZNMWSAcmbABbL/kp6caKA9L2zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvXS3lgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvXS3lgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F3CC4AF07
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720135522;
	bh=i76FFF80U9Vw9AUhVEL5Kmgw39iqLThRV5bBhpwhMiI=;
	h=To:Subject:From:Date:From;
	b=YvXS3lgp8/P1XKR8/XnB4sDRb0hxjYJDm6xHevbzs3LIihAOHL3y9Ly0F9bx4C9jG
	 A1cJCbMrA2Xggbr8I9vji/tcz8hD10vZMKr9uo8SzRIxaSZ7C8WgLKt9mCdTgzhPF3
	 5zXk6dsmD1OuXCvfT709Y9NWO9YmX1Xp6QzzScl92n0QbiE4WFvO64WY0HBc0iFng5
	 u4STyTrByU4lwP5mxsX1W9duDwTAocZxqKwAVxCwfJucGhltncvVrukA2m90zTTCGt
	 VoCI4USmbwDQtJ95J5WzBth7vG6ECou/7mJSnsTOKjCqq+PCTGXGOePUJvfot2Sjcr
	 9nkFlLoe0qJtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AF6C3271E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172013552279.4189.6852186070564751423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0451306ce899ac6ffde228426a52592bc0a79ae8cd66f28930e1ad79b128217
Date: Thu, 04 Jul 2024 23:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720135522
