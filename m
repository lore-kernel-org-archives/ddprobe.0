Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8902EB87B
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084034; cv=none; b=UfYGylZ37vzZzvzteIoeo9O7dAGnE9L66aJgElj6v0SzWPtv7ken+gIxOoVoEEHhauQE4Sm8Piq0doJGU4rmOIGcUt6e2hhCnmkgkvAu8osIo1t+kwB+7prNZhsJ9T1kg46AlrgNkO+fQ9QTr+ksG6ZgG5Nw9NeyWqAxC81qeaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084034; c=relaxed/simple;
	bh=o7Xr6g8vOFskOmb8/OicJDU/1JyNKx3qvF8T+KSgEDY=;
	h=To:Subject:From:Message-Id:Date; b=LIxQxCJLMQRQMQNekTf3rRTY7nQ1Rv/4kvM5ijsP3kDJ9iQ/YOgD4gBZd8QcQZecuYyMcCeyep/2kG83zUdEZlsFhKXenMs0W1mUV7ze0MUdSgm08N/77A+4wXP7yBiPJPfNwyyQpQM4He0/2W07D6YhWUCLom/An1iiGEMvEDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1M+9wmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1M+9wmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F2C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766084033;
	bh=o7Xr6g8vOFskOmb8/OicJDU/1JyNKx3qvF8T+KSgEDY=;
	h=To:Subject:From:Date:From;
	b=u1M+9wmXkmwZF93HmnMB9RdtQH7yNwIeacOrz6D6eKagzRZRpr6gfqVbvhMQRIkES
	 zgn5chEi+RotgdMHR+qMFki7cGHeIKqOjs/G8rHoxk+cFZsjNKSS5vdJErNC9J+Xe4
	 731PRr8Sf6Hv15QUX3n89XzYOviGBoVFEBt/jZJCNsE6SLc9l//Qtp4K5CqpJv4bIY
	 Ph/2PYG9KENlctK04b5xcnPAYdYF5QKsmG2pCJavhp0q72y1lnO88bk0vuwr8FTaQy
	 GMizEVZJjw54exM7qNoy+NazONQ+LpQImKMAr1hxYtfrTycl3jAkwJ3G15HI5sAd3e
	 U7qTin2ywYXzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F0D6E2D8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608403358.32435.5386308934043766392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ccbdeecf16885dc2f60a5160d557a80ac2f813f82908362e443db5cb11b385f
Date: Thu, 18 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766084033
