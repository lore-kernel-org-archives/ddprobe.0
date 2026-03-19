Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8123D5675
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773948894; cv=none; b=FUmiRmKVBavLxAXItrPPEm9DCyyJ786YKBrxnXRB8KXdBBEw0JlBk9Bl5ONgwjqVlTT+e1LQhk/LEYjB//KmJU5TO3z4F8o6GMaDsxPE/GjOLxsppoZLYySxOJeIUJIkbReorxYm2e5JS4EfwSW1HB13Lb4sh6dLFqG/3rQ0gAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773948894; c=relaxed/simple;
	bh=rC+2n4u7wgbrz7n0uDmrbc+kXWpL3nsDjr/B3Fkjbxk=;
	h=To:Subject:From:Message-Id:Date; b=GiTM0ntubX0A3MHs9Tgj6ygK5ha0nRzIGiQ6nzHWgJ2hpoKAcpL4g2/dw25dd18h7LGBr2/0+SiRCCbgGMXVVrnQEE+ENX8M1R7A6vbl/JA+zOG5o6E4qdBxvgqKofT+uQee7pvHAqrib+jrESaPhorf23+F+hJ4guJw0Ww3dGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsIzOeA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsIzOeA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC99C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773948893;
	bh=rC+2n4u7wgbrz7n0uDmrbc+kXWpL3nsDjr/B3Fkjbxk=;
	h=To:Subject:From:Date:From;
	b=dsIzOeA+5MUV+VA7gL/10r9x534mzjzQkSZVfhlvI39otFR4GLalKg4E0FVFqgi6C
	 8rMLO5Aa34OZr+sy1eaIRj4bbxNNMWV3xUDBOR8KYKPrMW6oiVU+AS+3kD6GOpiEWK
	 nMS0P1pS1i5a/iXuQncajb/111hHm3nHZveKmIwW96u647NDSK2oHabBl2OlnfhEkA
	 1sdKqC5V+hE+oUPl0KXQdA5p6dCOkxibFlYrizvQRcs4LFofx34rAGtgGn3rsoLN3X
	 0Uoq3absEtPnBJHCacns3oXnD1kcU1a+HM8VYzg2BNGp+H4htlzLdeDHLmt2WhEHvz
	 43/3BMqOkQKpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBC31091904
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394889362.5698.457161773014305418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0b1f152d1cb681ea873e4c3d74d1b2d1a851f8cf4ede77bfbcb936aab724f7
Date: Thu, 19 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773948893
