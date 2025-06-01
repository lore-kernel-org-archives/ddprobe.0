Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FADC1494A8
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748758794; cv=none; b=NXDS7I6oaXAXAHwneTL2nDnNKtcfeZuiZZjhedgAjALgdTsteX+1we/gGGNrhMHDfqm50mthQ0X4LSqe+/S77aXMdjKrAGvqqMTEIj+tjmOerlX6T6ZTmokqJ7RqyQN1W/hp11ide3uTX3oTEm00Gafq/lVD4JCuGSS+Mlybyhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748758794; c=relaxed/simple;
	bh=dHC731j8Jok9tuJMqswhpYqAok8Kklbci0jtYA7IWO8=;
	h=To:Subject:From:Message-Id:Date; b=GrCGHGnQi7p96bM7/IFCkBAGAcnTTrotg6uVBbZb3IuvL3mM3xDd/sDnqsYmxC+wJVxky0N3jZrmIKOdf4xTCGJcj7DUmyGyoHkMKwDi9g5/4DR7Pabv1+/KMU4J5gBaFGNwPyVE6jpwptEyWvKrU6iEuBI7bCh+cbCrxVFNz5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kswx0n4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kswx0n4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98ADC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748758793;
	bh=dHC731j8Jok9tuJMqswhpYqAok8Kklbci0jtYA7IWO8=;
	h=To:Subject:From:Date:From;
	b=kswx0n4r9fgG0d1vosOUIB6CpYUlsc+FoMM9eJtCY6b9xnRnd68wH3Fj08VhXhJde
	 qTb1fuhxSQTWGbt0lWXNJAU8R6rbSNno3jM2G77oiV9c9Viby2weSwadYxIh5fD1vW
	 1O9oRR5BwGn69M8C0CcBCmVFGMal4InKpSqeSXqsHpxD5+ySipqp8vIFAaNT9kNgL+
	 NSxz7z29dTJPfpbSpNF6MTQec+0QMx9NYR7EVhD+8gbYSjUE/zdzU7xJAbMzXDG2Vj
	 3bWv02g/bXFg6jQ9gRgJ8ysU8MSoz/8M9rX3Fgdhs24MZ5VOPOZiRFirFcx2xaH6rT
	 U67A6eMJiGXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967DDC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875879358.13469.14747312737204088437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe49060520de5b3f118061d4e85ac10a9ff088c35246fc8122dd877386c1ba6
Date: Sun, 01 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748758793
