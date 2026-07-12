Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9BF23393B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783892914; cv=none; b=M84LW/L0tlCjbBOOk7sW7CKIOPghz9x3PQzj4A/j2I7jrWqiTF7ehSL4lpUKRMOBnVWqChwjmL4Pb4prX6UgLZHYGXykos1+69yvm72X7B2X00MVCgLnr1+I+hsTS+USY8kl6VLmq3sU1pFWwOgYI6b5kQWDNv6t4N4Q3P/aqcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783892914; c=relaxed/simple;
	bh=h7R7L07Dv+IqSdQ/U/vQujQLN8+koegBtCYbVfqtkBE=;
	h=To:Subject:From:Message-Id:Date; b=Q0aLGHSVOW69gykhGiac8iIGOaLfMwHsplnO07VacrGex/9axgWs3lT2kGq4QTTmVK7EbqRL3kr7xMk4gWYcrWpJ39KKTN5VkZyzw4a6ftmugKfC4wkEMeKU16c6x6V0dd76D396BtqcYjA2SVB8kI6l5vmcuGJ83Znh79myhOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGzEaXAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGzEaXAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B50C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783892913;
	bh=h7R7L07Dv+IqSdQ/U/vQujQLN8+koegBtCYbVfqtkBE=;
	h=To:Subject:From:Date:From;
	b=KGzEaXAUg3rqckCqJwm9MLX6Ka7ymzxtyO8EqBCyKffKYzsYuUJPDTcI2vQwejhFU
	 FlslI/1nPt8QA5nz6MDDdu0P1zHSFuCQIwbNbzyD0Ll0KaesbQo9lBrUk9jn80rOhw
	 hxGyBOb/wNkrUmdGJVdEHbgw+0OrhXmrujVxpXYjsj6NuGb3dfPj28twdtj3cAdWUY
	 FpWAy9ZRAFDaIVbfXXuTdhXvpZUNt6/6M3awvZ+0QVop42UGYS1tXURuIp2xzqjgCr
	 N2I6MCbpo4af2O03iv28bmDHUd0QktC55NwyUp+ThTUD0V4hIWthHEBbbLBxnV00kR
	 b4/H5uYFO7M9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D9C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389291368.1002.12470442941075673680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffe38bd33cf78506fe39bcccf6ae9839fa8146e36979ce893b68fc5d8fff36a
Date: Sun, 12 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783892913
