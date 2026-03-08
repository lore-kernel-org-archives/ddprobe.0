Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FEE38E110
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772996094; cv=none; b=uEXtDuyyxqcyjlge669hfBWKQiN6uxOpjmnhfLY6+3SM1fvNcqjWeytT0YA7ZagYWe/f1XBjv5uFXN5/4Yy1zfQMH7yujYNzLfBv++22L45H3ounkfrIUizryP32Wa/YkACRqikyaKPK583cj/dmxkJf2NGjgcojLZf79PDlVnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772996094; c=relaxed/simple;
	bh=4oAEXezVnmY8rNaeXPJkBmXv0hYKQGGaB+yUJta4zpE=;
	h=To:Subject:From:Message-Id:Date; b=XVlp0WLhJok5ehBmKW/1RAreTp9nb2Q9t9GmcU/qu5OnwCmTa4IJ7r2oLEgxgEBXnz3nCkHbLo72HoAdzHmdOkYxk6H1D916fUi6d0QEwXbLlYKD/8jrt7iqRT4XGc5ZFGK+PjoP6YLt/gFjysX1IVHIYcV6TQi8zcfPG0ZLJDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOLwNHym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOLwNHym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83EBC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772996093;
	bh=4oAEXezVnmY8rNaeXPJkBmXv0hYKQGGaB+yUJta4zpE=;
	h=To:Subject:From:Date:From;
	b=hOLwNHymwJoXjEEjNjFjnumNHG6+4hfY8Vxqc7qf/VxBoE9EFqO9PtZeqyiqOesHP
	 7JffStOluBT6wRL1mPVLaqoTMZeDy5GQbGt89Q4NxmDRUWyQ+bebrlbWp2QK4e7OMi
	 ZbADS0fS+qUxEHEuRxl3JdPTOeYF/wWxkHFdXqn+fgC0UDNVPg6C67K3EcOMnmowRn
	 9dB+NK4agDVVYLrmFS5BRD7XyvqhCclgLUrpcBwKilR+tDSTiJFvKdFhD+G2dZW5Wm
	 hp+CsHpMt9y9crNHZWMveREsjvWf+Xtbep74xZ4ScY/Nx1vUyJwmnMgQRhbkZqCdMR
	 uK+a+F1aTuMgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED47EA853D
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299609362.5009.16147427708560877101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74498dd493d615ba1306645986e8f1847cf04715d5ee31ca8568aa58c457b4bc
Date: Sun, 08 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772996093
