Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BF02FE56F
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787427634; cv=none; b=IbjYGMrdrhfcY4WaqfGf44DR36Pr+IYhMCXMet8uAoHCj2/CtY+tag2bG0rAFe2/UkWIVrASZg2XNO3JfZp73jRCbUnR8aj9hhj5zyAHYgs1u5s1c9FXV0gOKiw/nvZ+mN2Ys/jgey1lQS3HuDcicEAOaZ81+EK03fC4yowN3AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787427634; c=relaxed/simple;
	bh=US/A9ewwhseZNtvlOtW/O3nPKM1LYdE6BT1trBLkbI0=;
	h=To:Subject:From:Message-Id:Date; b=eY05twM5h3+KWkUhBNWAvx14bCNx5BwSrnRG5R7RZkeHXF8JIBOGOFi0BG7X8A0aZYituERqkxrMMeC0hdt6BIccNeWNTeZUZmNyfYIoID9UpHc6MmI9aglQfWLOZE+kUFkK7GWqFEoiNJcQ0CBNBAtruwILCDhHxSuZHHKKq5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhaXy0Ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhaXy0Ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95B2C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787427633;
	bh=US/A9ewwhseZNtvlOtW/O3nPKM1LYdE6BT1trBLkbI0=;
	h=To:Subject:From:Date:From;
	b=WhaXy0HtGIQ5RQS/GUYNUcHmiYxLu6ea6auNKdCF88x8AaIywO2JlX3nBgdcEPR4a
	 FXVI0vi7+JomNlDBr/tcnmLxwwUmXRYo93fgWdXyREcC838FydbQsboiiGCJ8yH18K
	 PR5h6zDpR7q9dOjxrbo77FyEVZcPj6jGuHUp8HpX4TueONon8hXHdIrIcGpxkPvl7o
	 tI2iKM131C1OpDJy2zpO7F2cGopYnGqUA2nbrQKAjDlaaqhxC266nrKCa2eoxAWDSg
	 lkBfRsgV5wQCK28GOPcyyBjKqCT3z01SCnSE8CmcVuv2vF26xEpzYpwk0Qxz/ax4ss
	 esamIPe0XediQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45FBC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742763370.27164.7661547063059854791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61b5cbc66713087abc382dfc188dd376066fa037fd47f931fef20d87755b695
Date: Sat, 22 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787427633
