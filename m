Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5FD61FC5
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720194923; cv=none; b=PnpGQZjDh7FAZGNXPkv1O32u0dW0yFB2xUekvyM3m/Bq+2NQHtmRv4I2+iXRuiGfz8cECCx9AtNuBsVzNhAvGSVQTQDs11TO1yh1Uxp/VRzfP8WD5fj5D1NkeTbOCVyJv41WbSZ3TElSrpSr6s8EbYMmLUCVUXXPndZfjNaQcSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720194923; c=relaxed/simple;
	bh=73MPLqfNxeBeEo5xwEALPGzMpRIUbovan5ckrK2NXig=;
	h=To:Subject:From:Message-Id:Date; b=CVQ84ZNB4O2MogL278hpVrKo38DLt12C2uF4Dda6yAUFTHnU5I4o+s1RV+KOvVlW1nRBB8I3GKUvEeD5/u4RUzuxKK04bLKAX6GwBUH0eTS5GHXgThZeHx9t8t7GUKkxBsbshrp9nLwu+p+m8km2Y1G2FU9X6yQyhIQWZlC8HQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0uNsnOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0uNsnOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04DFCC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720194923;
	bh=73MPLqfNxeBeEo5xwEALPGzMpRIUbovan5ckrK2NXig=;
	h=To:Subject:From:Date:From;
	b=K0uNsnOAq5vanjUrxctojFlqGqfQI9MprVssFLEt4R1aGuGqmuDZFgqtf+uTIBT8A
	 y0k+slMa/QpaQkKgTix+sduWVw/oLhWce3sQB/GzGYWA4Q2HnyPgzW1yxx4t0XUZMT
	 QB+BGRmm+MAcorBWA9mhOf0wqgKEcFIRyb6q5VBx83G/DZcwLAwSm6L1hriI81AZB8
	 xN5d/ziyN+BT5jW7KQ5KhvTGjbQDxnz9o0QRtd2loNRtybuS4T29VW4654toX/APDd
	 cq4V0qwa6lDUqjx1G5y9yuPUVtIBFoI7i699Ocnf3jRakb1zkie8UOQ0l7AhPgoZdd
	 g68oGS+TNEb0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB7E8C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019492282.603.6497173849233291265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2793d322cbc3619517ac701409a37e67d2d668f734cdf359b78ed61b9a10b4e
Date: Fri, 05 Jul 2024 15:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720194922
