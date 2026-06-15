Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFF737F01D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781513194; cv=none; b=XKYSsqGzdmAu6PLTWyEbDeq78HOoGXn4+CazDotZm6Ug+Rc0ZgQrLpdJ/OHUvDGupu4nJMdvEKIs/x+QghLLMuH/uc2BEMBp1DjGOp8GmotCqqYjXa76viOHf6j3nknBpYUDt7npoEwUYxmb+LhgC/oht+nKVsF4YLF0Ycwi55k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781513194; c=relaxed/simple;
	bh=vK0qFBlRvj2SPV5Z1bb/42H/o0ts6XFQKrqBlNObRxI=;
	h=To:Subject:From:Message-Id:Date; b=gGdQf51jLdIQ6Yr/zVFNiUvGuKoDz9XloyFTnmlgtZZu8DkbTC+C2Ehl3pyuiAzjbZ58aJcatq2nbcWyaDDfKEKxBTlwRUv0YYgUvtbBpBcULVoUKm1JYtxGT7ADVi6FdBiMP/4s7eTU0/+WAIYk0Ov8jxKSf64r/rZxaVkaUG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9pAFnL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9pAFnL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8D7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781513193;
	bh=vK0qFBlRvj2SPV5Z1bb/42H/o0ts6XFQKrqBlNObRxI=;
	h=To:Subject:From:Date:From;
	b=Y9pAFnL9KdxIXh4jQxkwyfeto5GaJRE2SKh4OOh3bn8raR6iiuAjDw1RXBsYsWThw
	 8MYqC+zASxm6gQv3WoTBVzVKEA4YMn9Vt7HUL9l7rxTtc2eerh4qAm+SYevrpYjcd4
	 mREeTvKIGa6Sffm8xOH+shAZHD8GFeZQQOvYMFYUwZx52DhoOPxhR3qH0pHGG0wl2K
	 16C361xrLN902d2+gYpI2B68rQ2lbFa7aglOwvy3my+mFBKy0seFX2novL0Xno/9tK
	 X8Y3y8TNuQJkUTipCeWDnRukykDIHX2JOMNtdYbINtcEVbuX1KZfnuDZ/MfsoWj0mz
	 EUBwzseOY81jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBE3CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151319370.25309.14116212188339091003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a107f151799ba2f2b5037aa046bf08f47645bf99387a93b26fdf43c32363a0
Date: Mon, 15 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781513193
